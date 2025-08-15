# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PartnerCentralSelling
  module Types

    # @!attribute [rw] catalog
    #   The `CatalogType` parameter specifies the catalog associated with
    #   the engagement invitation. Accepted values are `AWS` and `Sandbox`,
    #   which determine the environment in which the engagement invitation
    #   is managed.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The `Identifier` parameter in the
    #   `AcceptEngagementInvitationRequest` specifies the unique identifier
    #   of the `EngagementInvitation` to be accepted. Providing the correct
    #   identifier ensures that the intended invitation is accepted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AcceptEngagementInvitationRequest AWS API Documentation
    #
    class AcceptEngagementInvitationRequest < Struct.new(
      :catalog,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] company_name
    #   Specifies the end `Customer`'s company name associated with the
    #   `Opportunity`.
    #   @return [String]
    #
    # @!attribute [rw] website_url
    #   Specifies the end customer's company website URL associated with
    #   the `Opportunity`. This value is crucial to map the customer within
    #   the Amazon Web Services CRM system. This field is required in all
    #   cases except when the opportunity is related to national security.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   Specifies the `Customer` Amazon Web Services account ID associated
    #   with the `Opportunity`.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   Specifies the end `Customer`'s address details associated with the
    #   `Opportunity`.
    #   @return [Types::Address]
    #
    # @!attribute [rw] duns
    #   Indicates the `Customer` DUNS number, if available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/Account AWS API Documentation
    #
    class Account < Struct.new(
      :industry,
      :other_industry,
      :company_name,
      :website_url,
      :aws_account_id,
      :address,
      :duns)
      SENSITIVE = [:company_name, :website_url, :aws_account_id, :duns]
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
      SENSITIVE = [:alias, :aws_account_id]
      include Aws::Structure
    end

    # An object that contains an `Account`'s subset of fields.
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
    # @!attribute [rw] company_name
    #   Specifies the end `Customer`'s company name associated with the
    #   `Opportunity`.
    #   @return [String]
    #
    # @!attribute [rw] website_url
    #   Specifies the end customer's company website URL associated with
    #   the `Opportunity`. This value is crucial to map the customer within
    #   the Amazon Web Services CRM system.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   Specifies the end `Customer`'s address details associated with the
    #   `Opportunity`.
    #   @return [Types::AddressSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AccountSummary AWS API Documentation
    #
    class AccountSummary < Struct.new(
      :industry,
      :other_industry,
      :company_name,
      :website_url,
      :address)
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
    # @!attribute [rw] country_code
    #   Specifies the end `Customer`'s country associated with the
    #   `Opportunity`.
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
      :postal_code,
      :state_or_region,
      :country_code,
      :street_address)
      SENSITIVE = [:city, :postal_code, :state_or_region, :country_code, :street_address]
      include Aws::Structure
    end

    # An object that contains an `Address` object's subset of fields.
    #
    # @!attribute [rw] city
    #   Specifies the end `Customer`'s city associated with the
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
    # @!attribute [rw] country_code
    #   Specifies the end `Customer`'s country associated with the
    #   `Opportunity`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AddressSummary AWS API Documentation
    #
    class AddressSummary < Struct.new(
      :city,
      :postal_code,
      :state_or_region,
      :country_code)
      SENSITIVE = [:city, :postal_code, :state_or_region, :country_code]
      include Aws::Structure
    end

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
    # @!attribute [rw] assignee
    #   Specifies the user or team member responsible for managing the
    #   assigned opportunity. This field identifies the *Assignee* based on
    #   the partner's internal team structure. Ensure that the email
    #   address is associated with a registered user in your Partner Central
    #   account.
    #   @return [Types::AssigneeContact]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AssignOpportunityRequest AWS API Documentation
    #
    class AssignOpportunityRequest < Struct.new(
      :catalog,
      :identifier,
      :assignee)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the contact details of the individual assigned to manage
    # the opportunity within the partner organization. This helps to ensure
    # that there is a point of contact for the opportunity's progress.
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
    # @!attribute [rw] business_title
    #   Specifies the business title of the assignee managing the
    #   opportunity. This helps clarify the individual's role and
    #   responsibilities within the organization. Use the value
    #   `PartnerAccountManager` to update details of the opportunity owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AssigneeContact AWS API Documentation
    #
    class AssigneeContact < Struct.new(
      :email,
      :first_name,
      :last_name,
      :business_title)
      SENSITIVE = [:email, :first_name, :last_name, :business_title]
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
    # @!attribute [rw] related_entity_type
    #   Specifies the entity type that you're associating with the `
    #   Opportunity`. This helps to categorize and properly process the
    #   association.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AssociateOpportunityRequest AWS API Documentation
    #
    class AssociateOpportunityRequest < Struct.new(
      :catalog,
      :opportunity_identifier,
      :related_entity_type,
      :related_entity_identifier)
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
    # @!attribute [rw] next_best_actions
    #   Provides recommendations from AWS on the next best actions to take
    #   in order to move the opportunity forward and increase the likelihood
    #   of success.
    #   @return [String]
    #
    # @!attribute [rw] engagement_score
    #   Represents a score assigned by AWS to indicate the level of
    #   engagement and potential success for the opportunity. This score
    #   helps partners prioritize their efforts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AwsOpportunityInsights AWS API Documentation
    #
    class AwsOpportunityInsights < Struct.new(
      :next_best_actions,
      :engagement_score)
      SENSITIVE = []
      include Aws::Structure
    end

    # Tracks the lifecycle of the AWS opportunity, including stages such as
    # qualification, validation, and closure. This field helps partners
    # understand the current status and progression of the opportunity.
    #
    # @!attribute [rw] target_close_date
    #   Indicates the expected date by which the opportunity is projected to
    #   close. This field helps in planning resources and timelines for both
    #   the partner and AWS.
    #   @return [String]
    #
    # @!attribute [rw] closed_lost_reason
    #   Indicates the reason why an opportunity was marked as `Closed Lost`.
    #   This helps in understanding the context behind the lost opportunity
    #   and aids in refining future strategies.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   Represents the current stage of the opportunity in its lifecycle,
    #   such as `Qualification`, `Validation`, or `Closed Won`. This helps
    #   in understanding the opportunity's progress.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AwsOpportunityLifeCycle AWS API Documentation
    #
    class AwsOpportunityLifeCycle < Struct.new(
      :target_close_date,
      :closed_lost_reason,
      :stage,
      :next_steps,
      :next_steps_history)
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
    # @!attribute [rw] business_title
    #   Specifies the Amazon Web Services team member's business title and
    #   indicates their organizational role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AwsTeamMember AWS API Documentation
    #
    class AwsTeamMember < Struct.new(
      :email,
      :first_name,
      :last_name,
      :business_title)
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
    # @!attribute [rw] business_title
    #   The partner contact's title (job title or role) associated with the
    #   `Opportunity`. `BusinessTitle` supports either
    #   `PartnerAccountManager` or `OpportunityOwner`.
    #   @return [String]
    #
    # @!attribute [rw] phone
    #   The contact's phone number associated with the `Opportunity`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/Contact AWS API Documentation
    #
    class Contact < Struct.new(
      :email,
      :first_name,
      :last_name,
      :business_title,
      :phone)
      SENSITIVE = [:email, :first_name, :last_name, :business_title, :phone]
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog related to the engagement. Accepted values are
    #   `AWS` and `Sandbox`, which determine the environment in which the
    #   engagement is managed.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, client-generated UUID to ensure that the request
    #   is handled exactly once. This token helps prevent duplicate
    #   invitation creations.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] engagement_identifier
    #   The unique identifier of the `Engagement` associated with the
    #   invitation. This parameter ensures the invitation is created within
    #   the correct `Engagement` context.
    #   @return [String]
    #
    # @!attribute [rw] invitation
    #   The `Invitation` object all information necessary to initiate an
    #   engagement invitation to a partner. It contains a personalized
    #   message from the sender, the invitation's receiver, and a payload.
    #   The `Payload` can be the `OpportunityInvitation`, which includes
    #   detailed structures for sender contacts, partner responsibilities,
    #   customer information, and project details.
    #   @return [Types::Invitation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/CreateEngagementInvitationRequest AWS API Documentation
    #
    class CreateEngagementInvitationRequest < Struct.new(
      :catalog,
      :client_token,
      :engagement_identifier,
      :invitation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Unique identifier assigned to the newly created engagement
    #   invitation.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the
    #   engagement invitation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/CreateEngagementInvitationResponse AWS API Documentation
    #
    class CreateEngagementInvitationResponse < Struct.new(
      :id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The `CreateEngagementRequest$Catalog` parameter specifies the
    #   catalog related to the engagement. Accepted values are `AWS` and
    #   `Sandbox`, which determine the environment in which the engagement
    #   is managed.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The `CreateEngagementRequest$ClientToken` parameter specifies a
    #   unique, case-sensitive identifier to ensure that the request is
    #   handled exactly once. The value must not exceed sixty-four
    #   alphanumeric characters.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   Specifies the title of the `Engagement`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Provides a description of the `Engagement`.
    #   @return [String]
    #
    # @!attribute [rw] contexts
    #   The `Contexts` field is a required array of objects, with a maximum
    #   of 5 contexts allowed, specifying detailed information about
    #   customer projects associated with the Engagement. Each context
    #   object contains a `Type` field indicating the context type, which
    #   must be `CustomerProject` in this version, and a `Payload` field
    #   containing the `CustomerProject` details. The `CustomerProject`
    #   object is composed of two main components: `Customer` and `Project`.
    #   The `Customer` object includes information such as `CompanyName`,
    #   `WebsiteUrl`, `Industry`, and `CountryCode`, providing essential
    #   details about the customer. The `Project` object contains `Title`,
    #   `BusinessProblem`, and `TargetCompletionDate`, offering insights
    #   into the specific project associated with the customer. This
    #   structure allows comprehensive context to be included within the
    #   Engagement, facilitating effective collaboration between parties by
    #   providing relevant customer and project information.
    #   @return [Array<Types::EngagementContextDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/CreateEngagementRequest AWS API Documentation
    #
    class CreateEngagementRequest < Struct.new(
      :catalog,
      :client_token,
      :title,
      :description,
      :contexts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Unique identifier assigned to the newly created engagement.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that identifies the engagement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/CreateEngagementResponse AWS API Documentation
    #
    class CreateEngagementResponse < Struct.new(
      :id,
      :arn)
      SENSITIVE = []
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
    #   @return [Array<String>]
    #
    # @!attribute [rw] national_security
    #   Indicates whether the `Opportunity` pertains to a national security
    #   project. This field must be set to `true` only when the customer's
    #   industry is *Government*. Additional privacy and security measures
    #   apply during the review and management process for opportunities
    #   marked as `NationalSecurity`.
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
    # @!attribute [rw] customer
    #   Specifies customer details associated with the `Opportunity`.
    #   @return [Types::Customer]
    #
    # @!attribute [rw] project
    #   An object that contains project details for the `Opportunity`.
    #   @return [Types::Project]
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
    # @!attribute [rw] marketing
    #   This object contains marketing details and is optional for an
    #   opportunity.
    #   @return [Types::Marketing]
    #
    # @!attribute [rw] software_revenue
    #   Specifies details of a customer's procurement terms. This is
    #   required only for partners in eligible programs.
    #   @return [Types::SoftwareRevenue]
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
    # @!attribute [rw] life_cycle
    #   An object that contains lifecycle details for the `Opportunity`.
    #   @return [Types::LifeCycle]
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
    # @!attribute [rw] opportunity_team
    #   Represents the internal team handling the opportunity. Specify
    #   collaborating members of this opportunity who are within the
    #   partner's organization.
    #   @return [Array<Types::Contact>]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs of the tag or tags to assign.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/CreateOpportunityRequest AWS API Documentation
    #
    class CreateOpportunityRequest < Struct.new(
      :catalog,
      :primary_needs_from_aws,
      :national_security,
      :partner_opportunity_identifier,
      :customer,
      :project,
      :opportunity_type,
      :marketing,
      :software_revenue,
      :client_token,
      :life_cycle,
      :origin,
      :opportunity_team,
      :tags)
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
    # @!attribute [rw] partner_opportunity_identifier
    #   Specifies the opportunity's unique identifier in the partner's CRM
    #   system. This value is essential to track and reconcile because it's
    #   included in the outbound payload sent back to the partner.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   `DateTime` when the opportunity was last modified. When the
    #   `Opportunity` is created, its value is `CreatedDate`.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/CreateOpportunityResponse AWS API Documentation
    #
    class CreateOpportunityResponse < Struct.new(
      :id,
      :partner_opportunity_identifier,
      :last_modified_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog in which to create the snapshot job. Valid
    #   values are `AWS` and ` Sandbox`.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A client-generated UUID used for idempotency check. The token helps
    #   prevent duplicate job creations.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] engagement_identifier
    #   Specifies the identifier of the engagement associated with the
    #   resource to be snapshotted.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource for which the snapshot job is being created.
    #   Must be one of the supported resource types i.e. `Opportunity`
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   Specifies the identifier of the specific resource to be snapshotted.
    #   The format depends on the ` ResourceType`.
    #   @return [String]
    #
    # @!attribute [rw] resource_snapshot_template_identifier
    #   Specifies the name of the template that defines the schema for the
    #   snapshot.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs of the tag or tags to assign.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/CreateResourceSnapshotJobRequest AWS API Documentation
    #
    class CreateResourceSnapshotJobRequest < Struct.new(
      :catalog,
      :client_token,
      :engagement_identifier,
      :resource_type,
      :resource_identifier,
      :resource_snapshot_template_identifier,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier for the created snapshot job.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the created snapshot job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/CreateResourceSnapshotJobResponse AWS API Documentation
    #
    class CreateResourceSnapshotJobResponse < Struct.new(
      :id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog where the snapshot is created. Valid values
    #   are `AWS` and `Sandbox`.
    #   @return [String]
    #
    # @!attribute [rw] engagement_identifier
    #   The unique identifier of the engagement associated with this
    #   snapshot. This field links the snapshot to a specific engagement
    #   context.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Specifies the type of resource for which the snapshot is being
    #   created. This field determines the structure and content of the
    #   snapshot. Must be one of the supported resource types, such as:
    #   `Opportunity`.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   The unique identifier of the specific resource to be snapshotted.
    #   The format and constraints of this identifier depend on the
    #   `ResourceType` specified. For example: For `Opportunity` type, it
    #   will be an opportunity ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_snapshot_template_identifier
    #   The name of the template that defines the schema for the snapshot.
    #   This template determines which subset of the resource data will be
    #   included in the snapshot. Must correspond to an existing and valid
    #   template for the specified `ResourceType`.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, client-generated UUID to ensure that the request
    #   is handled exactly once. This token helps prevent duplicate snapshot
    #   creations.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/CreateResourceSnapshotRequest AWS API Documentation
    #
    class CreateResourceSnapshotRequest < Struct.new(
      :catalog,
      :engagement_identifier,
      :resource_type,
      :resource_identifier,
      :resource_snapshot_template_identifier,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Specifies the Amazon Resource Name (ARN) that uniquely identifies
    #   the snapshot created.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   Specifies the revision number of the created snapshot. This field
    #   provides important information about the snapshot's place in the
    #   sequence of snapshots for the given resource.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/CreateResourceSnapshotResponse AWS API Documentation
    #
    class CreateResourceSnapshotResponse < Struct.new(
      :arn,
      :revision)
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

    # The CustomerProjects structure in Engagements offers a flexible
    # framework for managing customer-project relationships. It supports
    # multiple customers per Engagement and multiple projects per customer,
    # while also allowing for customers without projects and projects
    # without specific customers.
    #
    # All Engagement members have full visibility of customers and their
    # associated projects, enabling the capture of relevant context even
    # when project details are not fully defined. This structure also
    # facilitates targeted invitations, allowing partners to focus on
    # specific customers and their business problems when sending Engagement
    # invitations.
    #
    # @!attribute [rw] customer
    #   Contains details about the customer associated with the Engagement
    #   Invitation, including company information and industry.
    #   @return [Types::EngagementCustomer]
    #
    # @!attribute [rw] project
    #   Information about the customer project associated with the
    #   Engagement.
    #   @return [Types::EngagementCustomerProjectDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/CustomerProjectsContext AWS API Documentation
    #
    class CustomerProjectsContext < Struct.new(
      :customer,
      :project)
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
    #   Specifies the catalog from which to delete the snapshot job. Valid
    #   values are `AWS` and `Sandbox`.
    #   @return [String]
    #
    # @!attribute [rw] resource_snapshot_job_identifier
    #   The unique identifier of the resource snapshot job to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/DeleteResourceSnapshotJobRequest AWS API Documentation
    #
    class DeleteResourceSnapshotJobRequest < Struct.new(
      :catalog,
      :resource_snapshot_job_identifier)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/DisassociateOpportunityRequest AWS API Documentation
    #
    class DisassociateOpportunityRequest < Struct.new(
      :catalog,
      :opportunity_identifier,
      :related_entity_type,
      :related_entity_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides detailed context information for an Engagement. This
    # structure allows for specifying the type of context and its associated
    # payload.
    #
    # @!attribute [rw] type
    #   Specifies the type of Engagement context. Valid values are
    #   "CustomerProject" or "Document", indicating whether the context
    #   relates to a customer project or a document respectively.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   Contains the specific details of the Engagement context. The
    #   structure of this payload varies depending on the Type field.
    #   @return [Types::EngagementContextPayload]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/EngagementContextDetails AWS API Documentation
    #
    class EngagementContextDetails < Struct.new(
      :type,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the payload of an Engagement context. The structure of this
    # payload varies based on the context type specified in the
    # EngagementContextDetails.
    #
    # @note EngagementContextPayload is a union - when making an API calls you must set exactly one of the members.
    #
    # @note EngagementContextPayload is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of EngagementContextPayload corresponding to the set member.
    #
    # @!attribute [rw] customer_project
    #   Contains detailed information about a customer project when the
    #   context type is "CustomerProject". This field is present only when
    #   the Type in EngagementContextDetails is set to "CustomerProject".
    #   @return [Types::CustomerProjectsContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/EngagementContextPayload AWS API Documentation
    #
    class EngagementContextPayload < Struct.new(
      :customer_project,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CustomerProject < EngagementContextPayload; end
      class Unknown < EngagementContextPayload; end
    end

    # Contains details about the customer associated with the Engagement
    # Invitation, including company information and industry.
    #
    # @!attribute [rw] industry
    #   Specifies the industry to which the customer’s company belongs. This
    #   field helps categorize the opportunity based on the customer’s
    #   business sector.
    #   @return [String]
    #
    # @!attribute [rw] company_name
    #   Represents the name of the customer’s company associated with the
    #   Engagement Invitation. This field is used to identify the customer.
    #   @return [String]
    #
    # @!attribute [rw] website_url
    #   Provides the website URL of the customer’s company. This field helps
    #   partners verify the legitimacy and size of the customer
    #   organization.
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   Indicates the country in which the customer’s company operates. This
    #   field is useful for understanding regional requirements or
    #   compliance needs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/EngagementCustomer AWS API Documentation
    #
    class EngagementCustomer < Struct.new(
      :industry,
      :company_name,
      :website_url,
      :country_code)
      SENSITIVE = [:company_name, :website_url, :country_code]
      include Aws::Structure
    end

    # Provides comprehensive details about a customer project associated
    # with an Engagement. This may include information such as project
    # goals, timelines, and specific customer requirements.
    #
    # @!attribute [rw] title
    #   The title of the project.
    #   @return [String]
    #
    # @!attribute [rw] business_problem
    #   A description of the business problem the project aims to solve.
    #   @return [String]
    #
    # @!attribute [rw] target_completion_date
    #   The target completion date for the customer's project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/EngagementCustomerProjectDetails AWS API Documentation
    #
    class EngagementCustomerProjectDetails < Struct.new(
      :title,
      :business_problem,
      :target_completion_date)
      SENSITIVE = [:business_problem]
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
    # @!attribute [rw] payload_type
    #   Describes the type of payload associated with the Engagement
    #   Invitation, such as `Opportunity` or `MarketplaceOffer`. This helps
    #   partners understand the nature of the engagement request from AWS.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Represents the unique identifier of the Engagement Invitation. This
    #   identifier is used to track the invitation and to manage responses
    #   like acceptance or rejection.
    #   @return [String]
    #
    # @!attribute [rw] engagement_id
    #   The identifier of the Engagement associated with this invitation.
    #   This links the invitation to its parent Engagement.
    #   @return [String]
    #
    # @!attribute [rw] engagement_title
    #   Provides a short title or description of the Engagement Invitation.
    #   This title helps partners quickly identify and differentiate between
    #   multiple engagement opportunities.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Represents the current status of the Engagement Invitation, such as
    #   `Pending`, `Accepted`, or `Rejected`. The status helps track the
    #   progress and response to the invitation.
    #   @return [String]
    #
    # @!attribute [rw] invitation_date
    #   Indicates the date when the Engagement Invitation was sent to the
    #   partner. This provides context for when the opportunity was shared
    #   and helps in tracking the timeline for engagement.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_date
    #   Indicates the date and time when the Engagement Invitation will
    #   expire. After this date, the invitation can no longer be accepted,
    #   and the opportunity will be unavailable to the partner.
    #   @return [Time]
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
    # @!attribute [rw] receiver
    #   Specifies the partner company or individual that received the
    #   Engagement Invitation. This field is important for tracking who the
    #   invitation was sent to within the partner organization.
    #   @return [Types::Receiver]
    #
    # @!attribute [rw] catalog
    #   Specifies the catalog in which the Engagement Invitation resides.
    #   This can be either the `AWS` or `Sandbox` catalog, indicating
    #   whether the opportunity is live or being tested.
    #   @return [String]
    #
    # @!attribute [rw] participant_type
    #   Identifies the role of the caller in the engagement invitation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/EngagementInvitationSummary AWS API Documentation
    #
    class EngagementInvitationSummary < Struct.new(
      :arn,
      :payload_type,
      :id,
      :engagement_id,
      :engagement_title,
      :status,
      :invitation_date,
      :expiration_date,
      :sender_aws_account_id,
      :sender_company_name,
      :receiver,
      :catalog,
      :participant_type)
      SENSITIVE = [:sender_aws_account_id]
      include Aws::Structure
    end

    # Engagement members are the participants in an Engagement, which is
    # likely a collaborative project or business opportunity within the AWS
    # partner network. Members can be different partner organizations or AWS
    # accounts that are working together on a specific engagement.
    #
    # Each member is represented by their AWS Account ID, Company Name, and
    # associated details. Members have a status within the Engagement
    # (PENDING, ACCEPTED, REJECTED, or WITHDRAWN), indicating their current
    # state of participation. Only existing members of an Engagement can
    # view the list of other members. This implies a level of privacy and
    # access control within the Engagement structure.
    #
    # @!attribute [rw] company_name
    #   The official name of the member's company or organization.
    #   @return [String]
    #
    # @!attribute [rw] website_url
    #   The URL of the member company's website. This offers a way to find
    #   more information about the member organization and serves as an
    #   additional identifier.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   This is the unique identifier for the AWS account associated with
    #   the member organization. It's used for AWS-related operations and
    #   identity verification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/EngagementMember AWS API Documentation
    #
    class EngagementMember < Struct.new(
      :company_name,
      :website_url,
      :account_id)
      SENSITIVE = [:company_name, :account_id]
      include Aws::Structure
    end

    # The EngagementMemberSummary provides a snapshot of essential
    # information about participants in an AWS Partner Central Engagement.
    # This compact data structure encapsulates key details of each member,
    # facilitating efficient collaboration and management within the
    # Engagement.
    #
    # @!attribute [rw] company_name
    #   The official name of the member's company or organization.
    #   @return [String]
    #
    # @!attribute [rw] website_url
    #   The URL of the member company's website. This offers a way to find
    #   more information about the member organization and serves as an
    #   additional identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/EngagementMemberSummary AWS API Documentation
    #
    class EngagementMemberSummary < Struct.new(
      :company_name,
      :website_url)
      SENSITIVE = [:company_name]
      include Aws::Structure
    end

    # This provide a streamlined view of the relationships between
    # engagements and resources. These summaries offer a crucial link
    # between collaborative engagements and the specific resources involved,
    # such as opportunities.These summaries are particularly valuable for
    # partners navigating complex engagements with multiple resources. They
    # enable quick insights into resource distribution across engagements,
    # support efficient resource management, and help maintain a clear
    # overview of collaborative activities.
    #
    # @!attribute [rw] catalog
    #   Indicates the environment in which the resource and engagement
    #   exist.
    #   @return [String]
    #
    # @!attribute [rw] engagement_id
    #   A unique identifier for the engagement associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Categorizes the type of resource associated with the engagement.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   A unique identifier for the specific resource. Varies depending on
    #   the resource type.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The AWS account ID of the entity that owns the resource. Identifies
    #   the account responsible for or having primary control over the
    #   resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/EngagementResourceAssociationSummary AWS API Documentation
    #
    class EngagementResourceAssociationSummary < Struct.new(
      :catalog,
      :engagement_id,
      :resource_type,
      :resource_id,
      :created_by)
      SENSITIVE = [:created_by]
      include Aws::Structure
    end

    # Specifies the sorting parameters for listing Engagements.
    #
    # @!attribute [rw] sort_order
    #   The order in which to sort the results.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The field by which to sort the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/EngagementSort AWS API Documentation
    #
    class EngagementSort < Struct.new(
      :sort_order,
      :sort_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains an `Engagement`'s subset of fields.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the created Engagement.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the Engagement.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the Engagement.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the Engagement was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The AWS Account ID of the Engagement creator.
    #   @return [String]
    #
    # @!attribute [rw] member_count
    #   The number of members in the Engagement.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/EngagementSummary AWS API Documentation
    #
    class EngagementSummary < Struct.new(
      :arn,
      :id,
      :title,
      :created_at,
      :created_by,
      :member_count)
      SENSITIVE = [:created_by]
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
    #   projected amount. Only the value `Monthly` is allowed for the
    #   `Frequency` field, representing recurring monthly spend.
    #   @return [String]
    #
    # @!attribute [rw] target_company
    #   Specifies the name of the partner company that is expected to
    #   generate revenue from the opportunity. This field helps track the
    #   partner’s involvement in the opportunity. This field only accepts
    #   the value `AWS`. If any other value is provided, the system will
    #   automatically set it to `AWS`.
    #   @return [String]
    #
    # @!attribute [rw] estimation_url
    #   A URL providing additional information or context about the spend
    #   estimation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ExpectedCustomerSpend AWS API Documentation
    #
    class ExpectedCustomerSpend < Struct.new(
      :amount,
      :currency_code,
      :frequency,
      :target_company,
      :estimation_url)
      SENSITIVE = [:amount, :currency_code, :estimation_url]
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
    # @!attribute [rw] related_opportunity_id
    #   Provides the unique identifier of the related partner opportunity,
    #   allowing partners to link the AWS Opportunity to their corresponding
    #   opportunity in their CRM system.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   Specifies whether the AWS Opportunity originated from AWS or the
    #   partner. This helps distinguish between opportunities that were
    #   sourced by AWS and those referred by the partner.
    #   @return [String]
    #
    # @!attribute [rw] involvement_type
    #   Specifies the type of involvement AWS has in the opportunity, such
    #   as direct cosell or advisory support. This field helps partners
    #   understand the role AWS plays in advancing the opportunity.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   Defines the visibility level for the AWS Opportunity. Use `Full`
    #   visibility for most cases, while `Limited` visibility is reserved
    #   for special programs or sensitive opportunities.
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
    # @!attribute [rw] insights
    #   Provides insights into the AWS Opportunity, including engagement
    #   score and recommended actions that AWS suggests for the partner.
    #   @return [Types::AwsOpportunityInsights]
    #
    # @!attribute [rw] involvement_type_change_reason
    #   Provides a reason for any changes in the involvement type of AWS in
    #   the opportunity. This field is used to track why the level of AWS
    #   engagement has changed from `For Visibility Only` to `Co-sell`
    #   offering transparency into the partnership dynamics.
    #   @return [String]
    #
    # @!attribute [rw] related_entity_ids
    #   Lists related entity identifiers, such as AWS products or partner
    #   solutions, associated with the AWS Opportunity. These identifiers
    #   provide additional context and help partners understand which AWS
    #   services are involved.
    #   @return [Types::AwsOpportunityRelatedEntities]
    #
    # @!attribute [rw] customer
    #   Provides details about the customer associated with the AWS
    #   Opportunity, including account information, industry, and other
    #   customer data. These details help partners understand the business
    #   context of the opportunity.
    #   @return [Types::AwsOpportunityCustomer]
    #
    # @!attribute [rw] project
    #   Provides details about the project associated with the AWS
    #   Opportunity, including the customer’s business problem, expected
    #   outcomes, and project scope. This information is crucial for
    #   understanding the broader context of the opportunity.
    #   @return [Types::AwsOpportunityProject]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetAwsOpportunitySummaryResponse AWS API Documentation
    #
    class GetAwsOpportunitySummaryResponse < Struct.new(
      :catalog,
      :related_opportunity_id,
      :origin,
      :involvement_type,
      :visibility,
      :life_cycle,
      :opportunity_team,
      :insights,
      :involvement_type_change_reason,
      :related_entity_ids,
      :customer,
      :project)
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
    # @!attribute [rw] payload_type
    #   The type of payload contained in the engagement invitation,
    #   indicating what data or context the payload covers.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Unique identifier assigned to the engagement invitation being
    #   retrieved.
    #   @return [String]
    #
    # @!attribute [rw] engagement_id
    #   The identifier of the engagement associated with this
    #   invitation.This ID links the invitation to its corresponding
    #   engagement.
    #   @return [String]
    #
    # @!attribute [rw] engagement_title
    #   The title of the engagement invitation, summarizing the purpose or
    #   objectives of the opportunity shared by AWS.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the engagement invitation.
    #   @return [String]
    #
    # @!attribute [rw] invitation_date
    #   The date when the engagement invitation was sent to the partner.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_date
    #   Indicates the date on which the engagement invitation will expire if
    #   not accepted by the partner.
    #   @return [Time]
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
    # @!attribute [rw] receiver
    #   Information about the partner organization or team that received the
    #   engagement invitation, including contact details and identifiers.
    #   @return [Types::Receiver]
    #
    # @!attribute [rw] catalog
    #   Indicates the catalog from which the engagement invitation details
    #   are retrieved. This field helps in identifying the appropriate
    #   catalog (e.g., `AWS` or `Sandbox`) used in the request.
    #   @return [String]
    #
    # @!attribute [rw] rejection_reason
    #   If the engagement invitation was rejected, this field specifies the
    #   reason provided by the partner for the rejection.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   Details of the engagement invitation payload, including specific
    #   data relevant to the invitation's contents, such as customer
    #   information and opportunity insights.
    #   @return [Types::Payload]
    #
    # @!attribute [rw] invitation_message
    #   The message sent to the invited partner when the invitation was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] engagement_description
    #   The description of the engagement associated with this invitation.
    #   @return [String]
    #
    # @!attribute [rw] existing_members
    #   A list of active members currently part of the Engagement. This
    #   array contains a maximum of 10 members, each represented by an
    #   object with the following properties.
    #
    #   * CompanyName: The name of the member's company.
    #
    #   * WebsiteUrl: The website URL of the member's company.
    #   @return [Array<Types::EngagementMemberSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetEngagementInvitationResponse AWS API Documentation
    #
    class GetEngagementInvitationResponse < Struct.new(
      :arn,
      :payload_type,
      :id,
      :engagement_id,
      :engagement_title,
      :status,
      :invitation_date,
      :expiration_date,
      :sender_aws_account_id,
      :sender_company_name,
      :receiver,
      :catalog,
      :rejection_reason,
      :payload,
      :invitation_message,
      :engagement_description,
      :existing_members)
      SENSITIVE = [:sender_aws_account_id, :invitation_message]
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog related to the engagement request. Valid
    #   values are `AWS` and `Sandbox`.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   Specifies the identifier of the Engagement record to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetEngagementRequest AWS API Documentation
    #
    class GetEngagementRequest < Struct.new(
      :catalog,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique resource identifier of the engagement retrieved.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the engagement retrieved.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the engagement. It provides a brief, descriptive name
    #   for the engagement that is meaningful and easily recognizable.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A more detailed description of the engagement. This provides
    #   additional context or information about the engagement's purpose or
    #   scope.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the Engagement was created, presented in ISO
    #   8601 format (UTC). For example: "2023-05-01T20:37:46Z". This
    #   timestamp helps track the lifecycle of the Engagement.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The AWS account ID of the user who originally created the
    #   engagement. This field helps in tracking the origin of the
    #   engagement.
    #   @return [String]
    #
    # @!attribute [rw] member_count
    #   Specifies the current count of members participating in the
    #   Engagement. This count includes all active members regardless of
    #   their roles or permissions within the Engagement.
    #   @return [Integer]
    #
    # @!attribute [rw] contexts
    #   A list of context objects associated with the engagement. Each
    #   context provides additional information related to the Engagement,
    #   such as customer projects or documents.
    #   @return [Array<Types::EngagementContextDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetEngagementResponse AWS API Documentation
    #
    class GetEngagementResponse < Struct.new(
      :id,
      :arn,
      :title,
      :description,
      :created_at,
      :created_by,
      :member_count,
      :contexts)
      SENSITIVE = [:created_by]
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
    #   @return [Array<String>]
    #
    # @!attribute [rw] national_security
    #   Indicates whether the `Opportunity` pertains to a national security
    #   project. This field must be set to `true` only when the customer's
    #   industry is *Government*. Additional privacy and security measures
    #   apply during the review and management process for opportunities
    #   marked as `NationalSecurity`.
    #   @return [String]
    #
    # @!attribute [rw] partner_opportunity_identifier
    #   Specifies the opportunity's unique identifier in the partner's CRM
    #   system. This value is essential to track and reconcile because it's
    #   included in the outbound payload sent back to the partner.
    #   @return [String]
    #
    # @!attribute [rw] customer
    #   Specifies details of the customer associated with the `Opportunity`.
    #   @return [Types::Customer]
    #
    # @!attribute [rw] project
    #   An object that contains project details summary for the
    #   `Opportunity`.
    #   @return [Types::Project]
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
    # @!attribute [rw] marketing
    #   An object that contains marketing details for the `Opportunity`.
    #   @return [Types::Marketing]
    #
    # @!attribute [rw] software_revenue
    #   Specifies details of a customer's procurement terms. Required only
    #   for partners in eligible programs.
    #   @return [Types::SoftwareRevenue]
    #
    # @!attribute [rw] id
    #   Read-only, system generated `Opportunity` unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the
    #   opportunity.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   `DateTime` when the opportunity was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] created_date
    #   `DateTime` when the `Opportunity` was last created.
    #   @return [Time]
    #
    # @!attribute [rw] related_entity_identifiers
    #   Provides information about the associations of other entities with
    #   the opportunity. These entities include identifiers for
    #   `AWSProducts`, `Partner Solutions`, and `AWSMarketplaceOffers`.
    #   @return [Types::RelatedEntityIdentifiers]
    #
    # @!attribute [rw] life_cycle
    #   An object that contains lifecycle details for the `Opportunity`.
    #   @return [Types::LifeCycle]
    #
    # @!attribute [rw] opportunity_team
    #   Represents the internal team handling the opportunity. Specify the
    #   members involved in collaborating on this opportunity within the
    #   partner's organization.
    #   @return [Array<Types::Contact>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetOpportunityResponse AWS API Documentation
    #
    class GetOpportunityResponse < Struct.new(
      :catalog,
      :primary_needs_from_aws,
      :national_security,
      :partner_opportunity_identifier,
      :customer,
      :project,
      :opportunity_type,
      :marketing,
      :software_revenue,
      :id,
      :arn,
      :last_modified_date,
      :created_date,
      :related_entity_identifiers,
      :life_cycle,
      :opportunity_team)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog related to the request. Valid values are:
    #
    #   * AWS: Retrieves the snapshot job from the production AWS
    #     environment.
    #
    #   * Sandbox: Retrieves the snapshot job from a sandbox environment
    #     used for testing or development purposes.
    #   @return [String]
    #
    # @!attribute [rw] resource_snapshot_job_identifier
    #   The unique identifier of the resource snapshot job to be retrieved.
    #   This identifier is crucial for pinpointing the specific job you want
    #   to query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetResourceSnapshotJobRequest AWS API Documentation
    #
    class GetResourceSnapshotJobRequest < Struct.new(
      :catalog,
      :resource_snapshot_job_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog in which the snapshot job was created. This will match
    #   the Catalog specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the snapshot job. This matches the
    #   ResourceSnapshotJobIdentifier provided in the request.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the snapshot job. This globally
    #   unique identifier can be used for resource-specific operations
    #   across AWS services.
    #   @return [String]
    #
    # @!attribute [rw] engagement_id
    #   The identifier of the engagement associated with this snapshot job.
    #   This links the job to a specific engagement context.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource being snapshotted. This would have
    #   "Opportunity" as a value as it is dependent on the supported
    #   resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the specific resource being snapshotted. The
    #   format might vary depending on the ResourceType.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource being snapshotted.
    #   This provides a globally unique identifier for the resource across
    #   AWS.
    #   @return [String]
    #
    # @!attribute [rw] resource_snapshot_template_name
    #   The name of the template used for creating the snapshot. This is the
    #   same as the template name. It defines the structure and content of
    #   the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the snapshot job was created in ISO 8601
    #   format (UTC). Example: "2023-05-01T20:37:46Z"
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the snapshot job. Valid values:
    #
    #   * STOPPED: The job is not currently running.
    #
    #   * RUNNING: The job is actively executing.
    #   @return [String]
    #
    # @!attribute [rw] last_successful_execution_date
    #   The date and time of the last successful execution of the job, in
    #   ISO 8601 format (UTC). Example: "2023-05-01T20:37:46Z"
    #   @return [Time]
    #
    # @!attribute [rw] last_failure
    #   If the job has encountered any failures, this field contains the
    #   error message from the most recent failure. This can be useful for
    #   troubleshooting issues with the job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetResourceSnapshotJobResponse AWS API Documentation
    #
    class GetResourceSnapshotJobResponse < Struct.new(
      :catalog,
      :id,
      :arn,
      :engagement_id,
      :resource_type,
      :resource_id,
      :resource_arn,
      :resource_snapshot_template_name,
      :created_at,
      :status,
      :last_successful_execution_date,
      :last_failure)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog related to the request. Valid values are:
    #
    #   * AWS: Retrieves the snapshot from the production AWS environment.
    #
    #   * Sandbox: Retrieves the snapshot from a sandbox environment used
    #     for testing or development purposes.
    #   @return [String]
    #
    # @!attribute [rw] engagement_identifier
    #   The unique identifier of the engagement associated with the
    #   snapshot. This field links the snapshot to a specific engagement
    #   context.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Specifies the type of resource that was snapshotted. This field
    #   determines the structure and content of the snapshot payload. Valid
    #   value includes:`Opportunity`: For opportunity-related data.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   The unique identifier of the specific resource that was snapshotted.
    #   The format and constraints of this identifier depend on the
    #   ResourceType specified. For `Opportunity` type, it will be an
    #   `opportunity ID`
    #   @return [String]
    #
    # @!attribute [rw] resource_snapshot_template_identifier
    #   he name of the template that defines the schema for the snapshot.
    #   This template determines which subset of the resource data is
    #   included in the snapshot and must correspond to an existing and
    #   valid template for the specified `ResourceType`.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   Specifies which revision of the snapshot to retrieve. If omitted
    #   returns the latest revision.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetResourceSnapshotRequest AWS API Documentation
    #
    class GetResourceSnapshotRequest < Struct.new(
      :catalog,
      :engagement_identifier,
      :resource_type,
      :resource_identifier,
      :resource_snapshot_template_identifier,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog in which the snapshot was created. Matches the Catalog
    #   specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the resource
    #   snapshot.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The AWS account ID of the principal (user or role) who created the
    #   snapshot. This helps in tracking the origin of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the snapshot was created, in ISO 8601 format
    #   (e.g., "2023-06-01T14:30:00Z"). This allows for precise tracking
    #   of when the snapshot was taken.
    #   @return [Time]
    #
    # @!attribute [rw] engagement_id
    #   The identifier of the engagement associated with this snapshot.
    #   Matches the EngagementIdentifier specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that was snapshotted. Matches the
    #   ResourceType specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the specific resource that was snapshotted.
    #   Matches the ResourceIdentifier specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] resource_snapshot_template_name
    #   The name of the view used for this snapshot. This is the same as the
    #   template name.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision number of this snapshot. This is a positive integer
    #   that is sequential and unique within the context of a resource view.
    #   @return [Integer]
    #
    # @!attribute [rw] payload
    #   Represents the payload of a resource snapshot. This structure is
    #   designed to accommodate different types of resource snapshots,
    #   currently supporting opportunity summaries.
    #   @return [Types::ResourceSnapshotPayload]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetResourceSnapshotResponse AWS API Documentation
    #
    class GetResourceSnapshotResponse < Struct.new(
      :catalog,
      :arn,
      :created_by,
      :created_at,
      :engagement_id,
      :resource_type,
      :resource_id,
      :resource_snapshot_template_name,
      :revision,
      :payload)
      SENSITIVE = [:created_by]
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog in which the settings are defined. Acceptable
    #   values include `AWS` for production and `Sandbox` for testing
    #   environments.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetSellingSystemSettingsRequest AWS API Documentation
    #
    class GetSellingSystemSettingsRequest < Struct.new(
      :catalog)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog in which the settings are defined. Acceptable
    #   values include `AWS` for production and `Sandbox` for testing
    #   environments.
    #   @return [String]
    #
    # @!attribute [rw] resource_snapshot_job_role_arn
    #   Specifies the ARN of the IAM Role used for resource snapshot job
    #   executions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetSellingSystemSettingsResponse AWS API Documentation
    #
    class GetSellingSystemSettingsResponse < Struct.new(
      :catalog,
      :resource_snapshot_job_role_arn)
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

    # The Invitation structure represents an invitation exchanged between
    # partners and AWS. It includes a message, receiver information, and a
    # payload providing context for the invitation.
    #
    # @!attribute [rw] message
    #   A message accompanying the invitation.
    #   @return [String]
    #
    # @!attribute [rw] receiver
    #   Represents the entity that received the Engagement Invitation,
    #   including account and company details. This field is essential for
    #   tracking the partner who is being invited to collaborate.
    #   @return [Types::Receiver]
    #
    # @!attribute [rw] payload
    #   Contains the data payload associated with the Engagement Invitation.
    #   This payload includes essential details related to the AWS
    #   opportunity and is used by partners to evaluate whether to accept or
    #   reject the engagement.
    #   @return [Types::Payload]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/Invitation AWS API Documentation
    #
    class Invitation < Struct.new(
      :message,
      :receiver,
      :payload)
      SENSITIVE = [:message]
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
    # @!attribute [rw] review_comments
    #   Contains detailed feedback from Amazon Web Services when requesting
    #   additional information from partners. Provides specific guidance on
    #   what partners need to provide or clarify for opportunity validation,
    #   complementing the `ReviewStatusReason` field.
    #   @return [String]
    #
    # @!attribute [rw] review_status_reason
    #   Code indicating the validation decision during the Amazon Web
    #   Services opportunity review. Applies when status is `Rejected` or
    #   `Action Required`. Used to document validation results for AWS
    #   Partner Referrals and indicate when additional information is needed
    #   from partners as part of the APN Customer Engagement (ACE) program.
    #   @return [String]
    #
    # @!attribute [rw] next_steps_history
    #   Captures a chronological record of the next steps or actions planned
    #   or taken for the current opportunity, along with the timestamp.
    #   @return [Array<Types::NextStepsHistory>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/LifeCycle AWS API Documentation
    #
    class LifeCycle < Struct.new(
      :stage,
      :closed_lost_reason,
      :next_steps,
      :target_close_date,
      :review_status,
      :review_comments,
      :review_status_reason,
      :next_steps_history)
      SENSITIVE = [:next_steps]
      include Aws::Structure
    end

    # Provides the lifecycle view of an opportunity resource shared through
    # a snapshot.
    #
    # @!attribute [rw] target_close_date
    #   The projected launch date of the opportunity shared through a
    #   snapshot.
    #   @return [String]
    #
    # @!attribute [rw] review_status
    #   Defines the approval status of the opportunity shared through a
    #   snapshot.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   Defines the current stage of the opportunity shared through a
    #   snapshot.
    #   @return [String]
    #
    # @!attribute [rw] next_steps
    #   Describes the next steps for the opportunity shared through a
    #   snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/LifeCycleForView AWS API Documentation
    #
    class LifeCycleForView < Struct.new(
      :target_close_date,
      :review_status,
      :stage,
      :next_steps)
      SENSITIVE = [:next_steps]
      include Aws::Structure
    end

    # An object that contains a `LifeCycle` object's subset of fields.
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
    # @!attribute [rw] review_comments
    #   Indicates why an opportunity was sent back for further details.
    #   Partners must take corrective action based on the `ReviewComments`.
    #   @return [String]
    #
    # @!attribute [rw] review_status_reason
    #   Indicates the reason a specific decision was taken during the
    #   opportunity review process. This field combines the reasons for both
    #   disqualified and action required statuses, and provides clarity for
    #   why an opportunity was disqualified or required further action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/LifeCycleSummary AWS API Documentation
    #
    class LifeCycleSummary < Struct.new(
      :stage,
      :closed_lost_reason,
      :next_steps,
      :target_close_date,
      :review_status,
      :review_comments,
      :review_status_reason)
      SENSITIVE = [:next_steps]
      include Aws::Structure
    end

    # Specifies a subset of fields associated with tasks related to
    # accepting an engagement invitation.
    #
    # @!attribute [rw] task_id
    #   Unique identifier of the task.
    #   @return [String]
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the task.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   Task start timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] task_status
    #   Status of the task.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Detailed message describing the failure and possible recovery steps.
    #   @return [String]
    #
    # @!attribute [rw] reason_code
    #   A code pointing to the specific reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] opportunity_id
    #   Unique identifier of opportunity that was created.
    #   @return [String]
    #
    # @!attribute [rw] resource_snapshot_job_id
    #   Unique identifier of the resource snapshot job that was created.
    #   @return [String]
    #
    # @!attribute [rw] engagement_invitation_id
    #   The unique identifier of the engagement invitation that was
    #   accepted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListEngagementByAcceptingInvitationTaskSummary AWS API Documentation
    #
    class ListEngagementByAcceptingInvitationTaskSummary < Struct.new(
      :task_id,
      :task_arn,
      :start_time,
      :task_status,
      :message,
      :reason_code,
      :opportunity_id,
      :resource_snapshot_job_id,
      :engagement_invitation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Use this parameter to control the number of items returned in each
    #   request, which can be useful for performance tuning and managing
    #   large result sets.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Use this parameter for pagination when the result set spans multiple
    #   pages. This value is obtained from the NextToken field in the
    #   response of a previous call to this API.
    #   @return [String]
    #
    # @!attribute [rw] sort
    #   Specifies the sorting criteria for the returned results. This allows
    #   you to order the tasks based on specific attributes.
    #   @return [Types::ListTasksSortBase]
    #
    # @!attribute [rw] catalog
    #   Specifies the catalog related to the request. Valid values are:
    #
    #   * AWS: Retrieves the request from the production AWS environment.
    #
    #   * Sandbox: Retrieves the request from a sandbox environment used for
    #     testing or development purposes.
    #   @return [String]
    #
    # @!attribute [rw] task_status
    #   Filters the tasks based on their current status. This allows you to
    #   focus on tasks in specific states.
    #   @return [Array<String>]
    #
    # @!attribute [rw] opportunity_identifier
    #   Filters tasks by the identifiers of the opportunities they created
    #   or are associated with.
    #   @return [Array<String>]
    #
    # @!attribute [rw] engagement_invitation_identifier
    #   Filters tasks by the identifiers of the engagement invitations they
    #   are processing.
    #   @return [Array<String>]
    #
    # @!attribute [rw] task_identifier
    #   Filters tasks by their unique identifiers. Use this when you want to
    #   retrieve information about specific tasks.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListEngagementByAcceptingInvitationTasksRequest AWS API Documentation
    #
    class ListEngagementByAcceptingInvitationTasksRequest < Struct.new(
      :max_results,
      :next_token,
      :sort,
      :catalog,
      :task_status,
      :opportunity_identifier,
      :engagement_invitation_identifier,
      :task_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_summaries
    #   An array of `EngagementByAcceptingInvitationTaskSummary` objects,
    #   each representing a task that matches the specified filters. The
    #   array may be empty if no tasks match the criteria.
    #   @return [Array<Types::ListEngagementByAcceptingInvitationTaskSummary>]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination to retrieve the next page of results.If
    #   there are more results available, this field will contain a token
    #   that can be used in a subsequent API call to retrieve the next page.
    #   If there are no more results, this field will be null or an empty
    #   string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListEngagementByAcceptingInvitationTasksResponse AWS API Documentation
    #
    class ListEngagementByAcceptingInvitationTasksResponse < Struct.new(
      :task_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of a task related to creating an engagement from an
    # opportunity. This structure contains key information about the task's
    # status, associated identifiers, and any failure details.
    #
    # @!attribute [rw] task_id
    #   A unique identifier for a specific task.
    #   @return [String]
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) uniquely identifying this task within
    #   AWS. This ARN can be used for referencing the task in other AWS
    #   services or APIs.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp indicating when the task was initiated, in RFC 3339
    #   5.6 date-time format.
    #   @return [Time]
    #
    # @!attribute [rw] task_status
    #   The current status of the task.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A detailed message providing additional information about the task,
    #   especially useful in case of failures. This field may contain error
    #   details or other relevant information about the task's execution
    #   @return [String]
    #
    # @!attribute [rw] reason_code
    #   A code indicating the specific reason for a task failure. This field
    #   is populated when the task status is FAILED and provides a
    #   categorized reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] opportunity_id
    #   The unique identifier of the original Opportunity from which the
    #   Engagement is being created. This field helps track the source of
    #   the Engagement creation task.
    #   @return [String]
    #
    # @!attribute [rw] resource_snapshot_job_id
    #   The identifier of the resource snapshot job associated with this
    #   task, if a snapshot was created as part of the Engagement creation
    #   process.
    #   @return [String]
    #
    # @!attribute [rw] engagement_id
    #   The unique identifier of the engagement created as a result of the
    #   task. This field is populated when the task is completed
    #   successfully.
    #   @return [String]
    #
    # @!attribute [rw] engagement_invitation_id
    #   The unique identifier of the Engagement Invitation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListEngagementFromOpportunityTaskSummary AWS API Documentation
    #
    class ListEngagementFromOpportunityTaskSummary < Struct.new(
      :task_id,
      :task_arn,
      :start_time,
      :task_status,
      :message,
      :reason_code,
      :opportunity_id,
      :resource_snapshot_job_id,
      :engagement_id,
      :engagement_invitation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Specifies the maximum number of results to return in a single page
    #   of the response.Use this parameter to control the number of items
    #   returned in each request, which can be useful for performance tuning
    #   and managing large result sets.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for requesting the next page of results. This value is
    #   obtained from the NextToken field in the response of a previous call
    #   to this API. Use this parameter for pagination when the result set
    #   spans multiple pages.
    #   @return [String]
    #
    # @!attribute [rw] sort
    #   Specifies the sorting criteria for the returned results. This allows
    #   you to order the tasks based on specific attributes.
    #   @return [Types::ListTasksSortBase]
    #
    # @!attribute [rw] catalog
    #   Specifies the catalog related to the request. Valid values are:
    #
    #   * AWS: Retrieves the request from the production AWS environment.
    #
    #   * Sandbox: Retrieves the request from a sandbox environment used for
    #     testing or development purposes.
    #   @return [String]
    #
    # @!attribute [rw] task_status
    #   Filters the tasks based on their current status. This allows you to
    #   focus on tasks in specific states.
    #   @return [Array<String>]
    #
    # @!attribute [rw] task_identifier
    #   Filters tasks by their unique identifiers. Use this when you want to
    #   retrieve information about specific tasks.
    #   @return [Array<String>]
    #
    # @!attribute [rw] opportunity_identifier
    #   The identifier of the original opportunity associated with this
    #   task.
    #   @return [Array<String>]
    #
    # @!attribute [rw] engagement_identifier
    #   Filters tasks by the identifiers of the engagements they created or
    #   are associated with.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListEngagementFromOpportunityTasksRequest AWS API Documentation
    #
    class ListEngagementFromOpportunityTasksRequest < Struct.new(
      :max_results,
      :next_token,
      :sort,
      :catalog,
      :task_status,
      :task_identifier,
      :opportunity_identifier,
      :engagement_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_summaries
    #   TaskSummaries An array of TaskSummary objects containing details
    #   about each task.
    #   @return [Array<Types::ListEngagementFromOpportunityTaskSummary>]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination to retrieve the next page of results. If
    #   there are more results available, this field will contain a token
    #   that can be used in a subsequent API call to retrieve the next page.
    #   If there are no more results, this field will be null or an empty
    #   string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListEngagementFromOpportunityTasksResponse AWS API Documentation
    #
    class ListEngagementFromOpportunityTasksResponse < Struct.new(
      :task_summaries,
      :next_token)
      SENSITIVE = []
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
    # @!attribute [rw] sort
    #   Specifies the sorting options for listing engagement invitations.
    #   Invitations can be sorted by fields such as `InvitationDate` or
    #   `Status` to help partners view results in their preferred order.
    #   @return [Types::OpportunityEngagementInvitationSort]
    #
    # @!attribute [rw] payload_type
    #   Defines the type of payload associated with the engagement
    #   invitations to be listed. The attributes in this payload help decide
    #   on acceptance or rejection of the invitation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] participant_type
    #   Specifies the type of participant for which to list engagement
    #   invitations. Identifies the role of the participant.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status values to filter the invitations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] engagement_identifier
    #   Retrieves a list of engagement invitation summaries based on
    #   specified filters. The ListEngagementInvitations operation allows
    #   you to view all invitations that you have sent or received. You must
    #   specify the ParticipantType to filter invitations where you are
    #   either the SENDER or the RECEIVER. Invitations will automatically
    #   expire if not accepted within 15 days.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sender_aws_account_id
    #   List of sender AWS account IDs to filter the invitations.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListEngagementInvitationsRequest AWS API Documentation
    #
    class ListEngagementInvitationsRequest < Struct.new(
      :catalog,
      :max_results,
      :next_token,
      :sort,
      :payload_type,
      :participant_type,
      :status,
      :engagement_identifier,
      :sender_aws_account_id)
      SENSITIVE = [:sender_aws_account_id]
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
    #   The catalog related to the request.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   Identifier of the Engagement record to retrieve members from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListEngagementMembersRequest AWS API Documentation
    #
    class ListEngagementMembersRequest < Struct.new(
      :catalog,
      :identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engagement_member_list
    #   Provides a list of engagement members.
    #   @return [Array<Types::EngagementMember>]
    #
    # @!attribute [rw] next_token
    #   A pagination token used to retrieve the next set of results. If
    #   there are more results available than can be returned in a single
    #   response, this token will be present. Use this token in a subsequent
    #   request to retrieve the next page of results. If there are no more
    #   results, this value will be null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListEngagementMembersResponse AWS API Documentation
    #
    class ListEngagementMembersResponse < Struct.new(
      :engagement_member_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog in which to search for engagement-resource
    #   associations. Valid Values: "AWS" or "Sandbox"
    #
    #   * `AWS` for production environments.
    #
    #   * `Sandbox` for testing and development purposes.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Limits the number of results returned in a single call. Use this to
    #   control the number of results returned, especially useful for
    #   pagination.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results. Include this token in
    #   subsequent requests to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] engagement_identifier
    #   Filters the results to include only associations related to the
    #   specified engagement. Use this when you want to find all resources
    #   associated with a specific engagement.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Filters the results to include only associations with resources of
    #   the specified type.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   Filters the results to include only associations with the specified
    #   resource. Varies depending on the resource type. Use this when you
    #   want to find all engagements associated with a specific resource.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   Filters the response to include only snapshots of resources owned by
    #   the specified AWS account ID. Use this when you want to find
    #   associations related to resources owned by a particular account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListEngagementResourceAssociationsRequest AWS API Documentation
    #
    class ListEngagementResourceAssociationsRequest < Struct.new(
      :catalog,
      :max_results,
      :next_token,
      :engagement_identifier,
      :resource_type,
      :resource_identifier,
      :created_by)
      SENSITIVE = [:created_by]
      include Aws::Structure
    end

    # @!attribute [rw] engagement_resource_association_summaries
    #   A list of engagement-resource association summaries.
    #   @return [Array<Types::EngagementResourceAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next set of results. Use this token in a
    #   subsequent request to retrieve additional results if the response
    #   was truncated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListEngagementResourceAssociationsResponse AWS API Documentation
    #
    class ListEngagementResourceAssociationsResponse < Struct.new(
      :engagement_resource_association_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog related to the request.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   A list of AWS account IDs. When specified, the response includes
    #   engagements created by these accounts. This filter is useful for
    #   finding engagements created by specific team members.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclude_created_by
    #   An array of strings representing AWS Account IDs. Use this to
    #   exclude engagements created by specific users.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sort
    #   Specifies the sorting parameters for listing Engagements.
    #   @return [Types::EngagementSort]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. This value is returned from a
    #   previous call.
    #   @return [String]
    #
    # @!attribute [rw] engagement_identifier
    #   An array of strings representing engagement identifiers to retrieve.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListEngagementsRequest AWS API Documentation
    #
    class ListEngagementsRequest < Struct.new(
      :catalog,
      :created_by,
      :exclude_created_by,
      :sort,
      :max_results,
      :next_token,
      :engagement_identifier)
      SENSITIVE = [:created_by, :exclude_created_by]
      include Aws::Structure
    end

    # @!attribute [rw] engagement_summary_list
    #   An array of engagement summary objects.
    #   @return [Array<Types::EngagementSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results. This field will be
    #   null if there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListEngagementsResponse AWS API Documentation
    #
    class ListEngagementsResponse < Struct.new(
      :engagement_summary_list,
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
    # @!attribute [rw] last_modified_date
    #   Filters the opportunities based on their last modified date. This
    #   filter helps retrieve opportunities that were updated after the
    #   specified date, allowing partners to track recent changes or
    #   updates.
    #   @return [Types::LastModifiedDate]
    #
    # @!attribute [rw] identifier
    #   Filters the opportunities based on the opportunity identifier. This
    #   allows partners to retrieve specific opportunities by providing
    #   their unique identifiers, ensuring precise results.
    #   @return [Array<String>]
    #
    # @!attribute [rw] life_cycle_stage
    #   Filters the opportunities based on their lifecycle stage. This
    #   filter allows partners to retrieve opportunities at various stages
    #   in the sales cycle, such as `Qualified`, `Technical Validation`,
    #   `Business Validation`, or `Closed Won`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] life_cycle_review_status
    #   Filters the opportunities based on their current lifecycle approval
    #   status. Use this filter to retrieve opportunities with statuses such
    #   as `Pending Submission`, `In Review`, `Action Required`, or
    #   `Approved`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] customer_company_name
    #   Filters the opportunities based on the customer's company name.
    #   This allows partners to search for opportunities associated with a
    #   specific customer by matching the provided company name string.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListOpportunitiesRequest AWS API Documentation
    #
    class ListOpportunitiesRequest < Struct.new(
      :catalog,
      :max_results,
      :next_token,
      :sort,
      :last_modified_date,
      :identifier,
      :life_cycle_stage,
      :life_cycle_review_status,
      :customer_company_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] opportunity_summaries
    #   An array that contains minimal details for opportunities that match
    #   the request criteria. This summary view provides a quick overview of
    #   relevant opportunities.
    #   @return [Array<Types::OpportunitySummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token used to retrieve the next set of results in
    #   subsequent calls. This token is included in the response only if
    #   there are additional result pages available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListOpportunitiesResponse AWS API Documentation
    #
    class ListOpportunitiesResponse < Struct.new(
      :opportunity_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog related to the request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. If
    #   omitted, defaults to 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] engagement_identifier
    #   The identifier of the engagement to filter the response.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the jobs to filter the response.
    #   @return [String]
    #
    # @!attribute [rw] sort
    #   Configures the sorting of the response. If omitted, results are
    #   sorted by `CreatedDate` in descending order.
    #   @return [Types::SortObject]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListResourceSnapshotJobsRequest AWS API Documentation
    #
    class ListResourceSnapshotJobsRequest < Struct.new(
      :catalog,
      :max_results,
      :next_token,
      :engagement_identifier,
      :status,
      :sort)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_snapshot_job_summaries
    #   An array of resource snapshot job summary objects.
    #   @return [Array<Types::ResourceSnapshotJobSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results. If there are no
    #   additional results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListResourceSnapshotJobsResponse AWS API Documentation
    #
    class ListResourceSnapshotJobsResponse < Struct.new(
      :resource_snapshot_job_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog related to the request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] engagement_identifier
    #   The unique identifier of the engagement associated with the
    #   snapshots.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Filters the response to include only snapshots of the specified
    #   resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   Filters the response to include only snapshots of the specified
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_snapshot_template_identifier
    #   Filters the response to include only snapshots created using the
    #   specified template.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   Filters the response to include only snapshots of resources owned by
    #   the specified AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListResourceSnapshotsRequest AWS API Documentation
    #
    class ListResourceSnapshotsRequest < Struct.new(
      :catalog,
      :max_results,
      :next_token,
      :engagement_identifier,
      :resource_type,
      :resource_identifier,
      :resource_snapshot_template_identifier,
      :created_by)
      SENSITIVE = [:created_by]
      include Aws::Structure
    end

    # @!attribute [rw] resource_snapshot_summaries
    #   An array of resource snapshot summary objects.
    #   @return [Array<Types::ResourceSnapshotSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results. If there are no
    #   additional results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListResourceSnapshotsResponse AWS API Documentation
    #
    class ListResourceSnapshotsResponse < Struct.new(
      :resource_snapshot_summaries,
      :next_token)
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
    # @!attribute [rw] identifier
    #   Filters the solutions based on their unique identifier. Use this
    #   filter to retrieve specific solutions by providing the solution's
    #   identifier for accurate results.
    #   @return [Array<String>]
    #
    # @!attribute [rw] category
    #   Filters the solutions based on the category to which they belong.
    #   This allows partners to search for solutions within specific
    #   categories, such as `Software`, `Consulting`, or `Managed Services`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListSolutionsRequest AWS API Documentation
    #
    class ListSolutionsRequest < Struct.new(
      :catalog,
      :max_results,
      :next_token,
      :sort,
      :status,
      :identifier,
      :category)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] solution_summaries
    #   An array with minimal details for solutions matching the request
    #   criteria.
    #   @return [Array<Types::SolutionBase>]
    #
    # @!attribute [rw] next_token
    #   A pagination token used to retrieve the next set of results in
    #   subsequent calls. This token is included in the response only if
    #   there are additional result pages available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListSolutionsResponse AWS API Documentation
    #
    class ListSolutionsResponse < Struct.new(
      :solution_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   retrieve tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A map of the key-value pairs for the tag or tags assigned to the
    #   specified resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the sorting parameters for listing tasks. This structure
    # allows for specifying the field to sort by and the order of sorting.
    #
    # @!attribute [rw] sort_order
    #   Determines the order in which the sorted results are presented.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Specifies the field by which the task list should be sorted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListTasksSortBase AWS API Documentation
    #
    class ListTasksSortBase < Struct.new(
      :sort_order,
      :sort_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains marketing details for the `Opportunity`.
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
    # @!attribute [rw] channels
    #   Specifies the `Opportunity`'s channel that the marketing activity
    #   is associated with or was contacted through. This field provides
    #   information about the specific marketing channel that contributed to
    #   the generation of the lead or contact.
    #   @return [Array<String>]
    #
    # @!attribute [rw] aws_funding_used
    #   Indicates if the `Opportunity` is a marketing development fund (MDF)
    #   funded activity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/Marketing AWS API Documentation
    #
    class Marketing < Struct.new(
      :campaign_name,
      :source,
      :use_cases,
      :channels,
      :aws_funding_used)
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
    # @!attribute [rw] value
    #   Indicates the step's execution details.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   Indicates the step execution time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/NextStepsHistory AWS API Documentation
    #
    class NextStepsHistory < Struct.new(
      :value,
      :time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines sorting options for retrieving Engagement Invitations. Sorting
    # can be done based on various criteria like the invitation date or
    # status.
    #
    # @!attribute [rw] sort_order
    #   Defines the order in which the Engagement Invitations are sorted.
    #   The values can be `ASC` (ascending) or `DESC` (descending).
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Specifies the field by which the Engagement Invitations are sorted.
    #   Common values include `InvitationDate` and `Status`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/OpportunityEngagementInvitationSort AWS API Documentation
    #
    class OpportunityEngagementInvitationSort < Struct.new(
      :sort_order,
      :sort_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the data payload of an Engagement Invitation for a specific
    # opportunity. This contains detailed information that partners use to
    # evaluate the engagement.
    #
    # @!attribute [rw] sender_contacts
    #   Represents the contact details of the AWS representatives involved
    #   in sending the Engagement Invitation. These contacts are opportunity
    #   stakeholders.
    #   @return [Array<Types::SenderContact>]
    #
    # @!attribute [rw] receiver_responsibilities
    #   Outlines the responsibilities or expectations of the receiver in the
    #   context of the invitation.
    #   @return [Array<String>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/OpportunityInvitationPayload AWS API Documentation
    #
    class OpportunityInvitationPayload < Struct.new(
      :sender_contacts,
      :receiver_responsibilities,
      :customer,
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that configures response sorting.
    #
    # @!attribute [rw] sort_order
    #   Sort order.
    #
    #   Default: `Descending`
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Field name to sort by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/OpportunitySort AWS API Documentation
    #
    class OpportunitySort < Struct.new(
      :sort_order,
      :sort_by)
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
    # @!attribute [rw] id
    #   Read-only, system-generated `Opportunity` unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the opportunity. This globally
    #   unique identifier can be used for IAM policies and cross-service
    #   references.
    #   @return [String]
    #
    # @!attribute [rw] partner_opportunity_identifier
    #   Specifies the `Opportunity`'s unique identifier in the partner's
    #   CRM system. This value is essential to track and reconcile because
    #   it's included in the outbound payload sent back to the partner. It
    #   allows partners to link an opportunity to their CRM.
    #   @return [String]
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
    # @!attribute [rw] last_modified_date
    #   `DateTime` when the `Opportunity` was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] created_date
    #   `DateTime` when the `Opportunity` was last created.
    #   @return [Time]
    #
    # @!attribute [rw] life_cycle
    #   An object that contains the `Opportunity`'s lifecycle details.
    #   @return [Types::LifeCycleSummary]
    #
    # @!attribute [rw] customer
    #   An object that contains the `Opportunity`'s customer details.
    #   @return [Types::CustomerSummary]
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
      :id,
      :arn,
      :partner_opportunity_identifier,
      :opportunity_type,
      :last_modified_date,
      :created_date,
      :life_cycle,
      :customer,
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a comprehensive view of an opportunity summary, including
    # lifecycle information, team details, opportunity type, primary needs
    # from AWS, and associated project information.
    #
    # @!attribute [rw] opportunity_type
    #   Specifies the opportunity type.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle
    #   Contains information about the opportunity's lifecycle, including
    #   its current stage, status, and important dates such as creation and
    #   last modification times.
    #   @return [Types::LifeCycleForView]
    #
    # @!attribute [rw] opportunity_team
    #   Represents the internal team handling the opportunity. Specify the
    #   members involved in collaborating on an opportunity within the
    #   partner's organization.
    #   @return [Array<Types::Contact>]
    #
    # @!attribute [rw] primary_needs_from_aws
    #   Identifies the type of support the partner needs from AWS.
    #   @return [Array<String>]
    #
    # @!attribute [rw] customer
    #   An object that contains the customer's `Account` and `Contact`.
    #   @return [Types::Customer]
    #
    # @!attribute [rw] project
    #   Contains summary information about the project associated with the
    #   opportunity, including project name, description, timeline, and
    #   other relevant details.
    #   @return [Types::ProjectView]
    #
    # @!attribute [rw] related_entity_identifiers
    #   This field provides the associations' information for other
    #   entities with the opportunity. These entities include identifiers
    #   for `AWSProducts`, `Partner Solutions`, and `AWSMarketplaceOffers`.
    #   @return [Types::RelatedEntityIdentifiers]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/OpportunitySummaryView AWS API Documentation
    #
    class OpportunitySummaryView < Struct.new(
      :opportunity_type,
      :lifecycle,
      :opportunity_team,
      :primary_needs_from_aws,
      :customer,
      :project,
      :related_entity_identifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the data payload associated with the Engagement Invitation.
    # This payload includes essential details related to the AWS opportunity
    # and is used by partners to evaluate whether to accept or reject the
    # engagement.
    #
    # @note Payload is a union - when making an API calls you must set exactly one of the members.
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
    # @!attribute [rw] value
    #   Represents the details of the next step recorded, such as follow-up
    #   actions or decisions made. This field helps in tracking progress and
    #   ensuring alignment with project goals.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   Indicates the date and time when a particular next step was recorded
    #   or planned. This helps in managing the timeline for the opportunity.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ProfileNextStepsHistory AWS API Documentation
    #
    class ProfileNextStepsHistory < Struct.new(
      :value,
      :time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the `Opportunity`'s project details.
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
    # @!attribute [rw] title
    #   Specifies the `Opportunity`'s title or name.
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
    # @!attribute [rw] competitor_name
    #   Name of the `Opportunity`'s competitor (if any). Use `Other` to
    #   submit a value not in the picklist.
    #   @return [String]
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
    # @!attribute [rw] additional_comments
    #   Captures additional comments or information for the `Opportunity`
    #   that weren't captured in other fields.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/Project AWS API Documentation
    #
    class Project < Struct.new(
      :delivery_models,
      :expected_customer_spend,
      :title,
      :apn_programs,
      :customer_business_problem,
      :customer_use_case,
      :related_opportunity_identifier,
      :sales_activities,
      :competitor_name,
      :other_competitor_names,
      :other_solution_description,
      :additional_comments)
      SENSITIVE = [:title, :customer_business_problem, :other_solution_description]
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
    # @!attribute [rw] title
    #   Specifies the title of the project. This title helps partners
    #   quickly identify and understand the focus of the project.
    #   @return [String]
    #
    # @!attribute [rw] target_completion_date
    #   Specifies the estimated date of project completion. This field helps
    #   track the project timeline and manage expectations.
    #   @return [String]
    #
    # @!attribute [rw] expected_customer_spend
    #   Contains revenue estimates for the partner related to the project.
    #   This field provides an idea of the financial potential of the
    #   opportunity for the partner.
    #   @return [Array<Types::ExpectedCustomerSpend>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ProjectDetails AWS API Documentation
    #
    class ProjectDetails < Struct.new(
      :business_problem,
      :title,
      :target_completion_date,
      :expected_customer_spend)
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

    # Provides the project view of an opportunity resource shared through a
    # snapshot.
    #
    # @!attribute [rw] delivery_models
    #   Describes the deployment or consumption model for the partner
    #   solution or offering. This field indicates how the project's
    #   solution will be delivered or implemented for the customer.
    #   @return [Array<String>]
    #
    # @!attribute [rw] expected_customer_spend
    #   Provides information about the anticipated customer spend related to
    #   this project. This may include details such as amount, frequency,
    #   and currency of expected expenditure.
    #   @return [Array<Types::ExpectedCustomerSpend>]
    #
    # @!attribute [rw] customer_use_case
    #   Specifies the proposed solution focus or type of workload for the
    #   project.
    #   @return [String]
    #
    # @!attribute [rw] sales_activities
    #   Lists the pre-sales activities that have occurred with the
    #   end-customer related to the opportunity. This field is conditionally
    #   mandatory when the project is qualified for Co-Sell and helps drive
    #   assignment priority on the AWS side. It provides insight into the
    #   engagement level with the customer.
    #   @return [Array<String>]
    #
    # @!attribute [rw] other_solution_description
    #   Offers a description of other solutions if the standard solutions do
    #   not adequately cover the project's scope.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ProjectView AWS API Documentation
    #
    class ProjectView < Struct.new(
      :delivery_models,
      :expected_customer_spend,
      :customer_use_case,
      :sales_activities,
      :other_solution_description)
      SENSITIVE = [:other_solution_description]
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog in which the settings will be updated.
    #   Acceptable values include `AWS` for production and `Sandbox` for
    #   testing environments.
    #   @return [String]
    #
    # @!attribute [rw] resource_snapshot_job_role_identifier
    #   Specifies the ARN of the IAM Role used for resource snapshot job
    #   executions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/PutSellingSystemSettingsRequest AWS API Documentation
    #
    class PutSellingSystemSettingsRequest < Struct.new(
      :catalog,
      :resource_snapshot_job_role_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog in which the settings are defined. Acceptable
    #   values include `AWS` for production and `Sandbox` for testing
    #   environments.
    #   @return [String]
    #
    # @!attribute [rw] resource_snapshot_job_role_arn
    #   Specifies the ARN of the IAM Role used for resource snapshot job
    #   executions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/PutSellingSystemSettingsResponse AWS API Documentation
    #
    class PutSellingSystemSettingsResponse < Struct.new(
      :catalog,
      :resource_snapshot_job_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the entity that received the Engagement Invitation,
    # including account and company details. This field is essential for
    # tracking the partner who is being invited to collaborate.
    #
    # @note Receiver is a union - when making an API calls you must set exactly one of the members.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/RelatedEntityIdentifiers AWS API Documentation
    #
    class RelatedEntityIdentifiers < Struct.new(
      :aws_marketplace_offers,
      :solutions,
      :aws_products)
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

    # An object that contains a `Resource Snapshot Job`'s subset of fields.
    #
    # @!attribute [rw] id
    #   The unique identifier for the resource snapshot job within the AWS
    #   Partner Central system. This ID is used for direct references to the
    #   job within the service.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the resource snapshot job.
    #   @return [String]
    #
    # @!attribute [rw] engagement_id
    #   The unique identifier of the Engagement.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the snapshot job.
    #
    #   Valid values:
    #
    #   * STOPPED: The job is not currently running.
    #
    #   * RUNNING: The job is actively executing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ResourceSnapshotJobSummary AWS API Documentation
    #
    class ResourceSnapshotJobSummary < Struct.new(
      :id,
      :arn,
      :engagement_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the payload of a resource snapshot. This structure is
    # designed to accommodate different types of resource snapshots,
    # currently supporting opportunity summaries.
    #
    # @note ResourceSnapshotPayload is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ResourceSnapshotPayload corresponding to the set member.
    #
    # @!attribute [rw] opportunity_summary
    #   An object that contains an `opportunity`'s subset of fields.
    #   @return [Types::OpportunitySummaryView]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ResourceSnapshotPayload AWS API Documentation
    #
    class ResourceSnapshotPayload < Struct.new(
      :opportunity_summary,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class OpportunitySummary < ResourceSnapshotPayload; end
      class Unknown < ResourceSnapshotPayload; end
    end

    # Provides a concise summary of a resource snapshot, including its
    # unique identifier and version information. This structure is used to
    # quickly reference and identify specific versions of resource
    # snapshots.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the snapshot. This globally unique
    #   identifier can be used for cross-service references and in IAM
    #   policies.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision number of the snapshot. This integer value is
    #   incremented each time the snapshot is updated, allowing for version
    #   tracking of the resource snapshot.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_type
    #   The type of resource snapshotted.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the specific resource snapshotted. The format
    #   might vary depending on the ResourceType.
    #   @return [String]
    #
    # @!attribute [rw] resource_snapshot_template_name
    #   The name of the template used to create the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The AWS account ID of the entity that owns the resource from which
    #   the snapshot was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ResourceSnapshotSummary AWS API Documentation
    #
    class ResourceSnapshotSummary < Struct.new(
      :arn,
      :revision,
      :resource_type,
      :resource_id,
      :resource_snapshot_template_name,
      :created_by)
      SENSITIVE = [:created_by]
      include Aws::Structure
    end

    # An object that contains the details of the sender-provided contact
    # person for the `EngagementInvitation`.
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
    # @!attribute [rw] business_title
    #   The sender-provided contact's title (job title or role) associated
    #   with the `EngagementInvitation`.
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
      :email,
      :first_name,
      :last_name,
      :business_title,
      :phone)
      SENSITIVE = [:email, :first_name, :last_name, :business_title, :phone]
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
    # @!attribute [rw] value
    #   Specifies the payment value (amount and currency).
    #   @return [Types::MonetaryValue]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/SoftwareRevenue AWS API Documentation
    #
    class SoftwareRevenue < Struct.new(
      :delivery_model,
      :value,
      :effective_date,
      :expiration_date)
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
    # @!attribute [rw] id
    #   Enables the association of solutions (offerings) to opportunities.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The SolutionBase structure provides essential information about a
    #   solution.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/SolutionBase AWS API Documentation
    #
    class SolutionBase < Struct.new(
      :catalog,
      :id,
      :arn,
      :name,
      :status,
      :category,
      :created_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures the solutions' response sorting that enables partners to
    # order solutions based on specified attributes.
    #
    # @!attribute [rw] sort_order
    #   Specifies the sorting order, either `Ascending` or `Descending`. The
    #   default is `Descending`.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Specifies the attribute to sort by, such as `Name`, `CreatedDate`,
    #   or `Status`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/SolutionSort AWS API Documentation
    #
    class SolutionSort < Struct.new(
      :sort_order,
      :sort_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the sorting parameters for listing resource snapshot jobs.
    # This structure allows you to specify the field to sort by and the
    # order of sorting.
    #
    # @!attribute [rw] sort_by
    #   Specifies the field by which to sort the resource snapshot jobs.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Determines the order in which the sorted results are presented.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/SortObject AWS API Documentation
    #
    class SortObject < Struct.new(
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
    # @!attribute [rw] tags
    #   A map of the key-value pairs of the tag or tags to assign.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/StartEngagementByAcceptingInvitationTaskRequest AWS API Documentation
    #
    class StartEngagementByAcceptingInvitationTaskRequest < Struct.new(
      :catalog,
      :client_token,
      :identifier,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   The unique identifier of the task, used to track the task’s
    #   progress.
    #   @return [String]
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task, used for tracking and
    #   managing the task within AWS.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp indicating when the task was initiated. The format
    #   follows RFC 3339 section 5.6.
    #   @return [Time]
    #
    # @!attribute [rw] task_status
    #   Indicates the current status of the task.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   If the task fails, this field contains a detailed message describing
    #   the failure and possible recovery steps.
    #   @return [String]
    #
    # @!attribute [rw] reason_code
    #   Indicates the reason for task failure using an enumerated code.
    #   @return [String]
    #
    # @!attribute [rw] opportunity_id
    #   Returns the original opportunity identifier passed in the request.
    #   This is the unique identifier for the opportunity.
    #   @return [String]
    #
    # @!attribute [rw] resource_snapshot_job_id
    #   The identifier of the Resource Snapshot Job created as part of this
    #   task.
    #   @return [String]
    #
    # @!attribute [rw] engagement_invitation_id
    #   Returns the identifier of the engagement invitation that was
    #   accepted and used to create the opportunity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/StartEngagementByAcceptingInvitationTaskResponse AWS API Documentation
    #
    class StartEngagementByAcceptingInvitationTaskResponse < Struct.new(
      :task_id,
      :task_arn,
      :start_time,
      :task_status,
      :message,
      :reason_code,
      :opportunity_id,
      :resource_snapshot_job_id,
      :engagement_invitation_id)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] aws_submission
    #   Indicates the level of AWS involvement in the opportunity. This
    #   field helps track AWS participation throughout the engagement, such
    #   as providing technical support, deal assistance, and sales support.
    #   @return [Types::AwsSubmission]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs of the tag or tags to assign.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/StartEngagementFromOpportunityTaskRequest AWS API Documentation
    #
    class StartEngagementFromOpportunityTaskRequest < Struct.new(
      :catalog,
      :client_token,
      :identifier,
      :aws_submission,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   The unique identifier of the task, used to track the task’s
    #   progress. This value follows a specific pattern:
    #   `^oit-[0-9a-z]{13}$`.
    #   @return [String]
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task, used for tracking and
    #   managing the task within AWS.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp indicating when the task was initiated. The format
    #   follows RFC 3339 section 5.6.
    #   @return [Time]
    #
    # @!attribute [rw] task_status
    #   Indicates the current status of the task. Valid values include
    #   `IN_PROGRESS`, `COMPLETE`, and `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   If the task fails, this field contains a detailed message describing
    #   the failure and possible recovery steps.
    #   @return [String]
    #
    # @!attribute [rw] reason_code
    #   Indicates the reason for task failure using an enumerated code.
    #   @return [String]
    #
    # @!attribute [rw] opportunity_id
    #   Returns the original opportunity identifier passed in the request,
    #   which is the unique identifier for the opportunity created in the
    #   partner’s system.
    #   @return [String]
    #
    # @!attribute [rw] resource_snapshot_job_id
    #   The identifier of the resource snapshot job created to add the
    #   opportunity resource snapshot to the Engagement. Only populated if
    #   TaskStatus is COMPLETE
    #   @return [String]
    #
    # @!attribute [rw] engagement_id
    #   The identifier of the newly created Engagement. Only populated if
    #   TaskStatus is COMPLETE.
    #   @return [String]
    #
    # @!attribute [rw] engagement_invitation_id
    #   The identifier of the new Engagement invitation. Only populated if
    #   TaskStatus is COMPLETE.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/StartEngagementFromOpportunityTaskResponse AWS API Documentation
    #
    class StartEngagementFromOpportunityTaskResponse < Struct.new(
      :task_id,
      :task_arn,
      :start_time,
      :task_status,
      :message,
      :reason_code,
      :opportunity_id,
      :resource_snapshot_job_id,
      :engagement_id,
      :engagement_invitation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog related to the request. Valid values are:
    #
    #   * AWS: Starts the request from the production AWS environment.
    #
    #   * Sandbox: Starts the request from a sandbox environment used for
    #     testing or development purposes.
    #   @return [String]
    #
    # @!attribute [rw] resource_snapshot_job_identifier
    #   The identifier of the resource snapshot job to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/StartResourceSnapshotJobRequest AWS API Documentation
    #
    class StartResourceSnapshotJobRequest < Struct.new(
      :catalog,
      :resource_snapshot_job_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog related to the request. Valid values are:
    #
    #   * AWS: Stops the request from the production AWS environment.
    #
    #   * Sandbox: Stops the request from a sandbox environment used for
    #     testing or development purposes.
    #   @return [String]
    #
    # @!attribute [rw] resource_snapshot_job_identifier
    #   The identifier of the job to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/StopResourceSnapshotJobRequest AWS API Documentation
    #
    class StopResourceSnapshotJobRequest < Struct.new(
      :catalog,
      :resource_snapshot_job_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog related to the request. Valid values are:
    #
    #   * AWS: Submits the opportunity request from the production AWS
    #     environment.
    #
    #   * Sandbox: Submits the opportunity request from a sandbox
    #     environment used for testing or development purposes.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the Opportunity previously created by partner and
    #   needs to be submitted.
    #   @return [String]
    #
    # @!attribute [rw] involvement_type
    #   Specifies the level of AWS sellers' involvement on the opportunity.
    #   Valid values:
    #
    #   * `Co-sell`: Indicates the user wants to co-sell with AWS. Share the
    #     opportunity with AWS to receive deal assistance and support.
    #
    #   * `For Visibility Only`: Indicates that the user does not need
    #     support from AWS Sales Rep. Share this opportunity with AWS for
    #     visibility only, you will not receive deal assistance and support.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   Determines whether to restrict visibility of the opportunity from
    #   AWS sales. Default value is Full. Valid values:
    #
    #   * `Full`: The opportunity is fully visible to AWS sales.
    #
    #   * `Limited`: The opportunity has restricted visibility to AWS sales.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/SubmitOpportunityRequest AWS API Documentation
    #
    class SubmitOpportunityRequest < Struct.new(
      :catalog,
      :identifier,
      :involvement_type,
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # The key-value pair assigned to a specified resource.
    #
    # @!attribute [rw] key
    #   The key in the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value in the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs of the tag or tags to assign.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

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

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the key-value pairs for the tag or tags you want to
    #   remove from the specified resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

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
    #   @return [Array<String>]
    #
    # @!attribute [rw] national_security
    #   Specifies if the opportunity is associated with national security
    #   concerns. This flag is only applicable when the industry is
    #   `Government`. For national-security-related opportunities,
    #   validation and compliance rules may apply, impacting the
    #   opportunity's visibility and processing.
    #   @return [String]
    #
    # @!attribute [rw] partner_opportunity_identifier
    #   Specifies the opportunity's unique identifier in the partner's CRM
    #   system. This value is essential to track and reconcile because it's
    #   included in the outbound payload sent back to the partner.
    #   @return [String]
    #
    # @!attribute [rw] customer
    #   Specifies details of the customer associated with the `Opportunity`.
    #   @return [Types::Customer]
    #
    # @!attribute [rw] project
    #   An object that contains project details summary for the
    #   `Opportunity`.
    #   @return [Types::Project]
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
    # @!attribute [rw] marketing
    #   An object that contains marketing details for the `Opportunity`.
    #   @return [Types::Marketing]
    #
    # @!attribute [rw] software_revenue
    #   Specifies details of a customer's procurement terms. Required only
    #   for partners in eligible programs.
    #   @return [Types::SoftwareRevenue]
    #
    # @!attribute [rw] last_modified_date
    #   `DateTime` when the opportunity was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] identifier
    #   Read-only, system generated `Opportunity` unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] life_cycle
    #   An object that contains lifecycle details for the `Opportunity`.
    #   @return [Types::LifeCycle]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/UpdateOpportunityRequest AWS API Documentation
    #
    class UpdateOpportunityRequest < Struct.new(
      :catalog,
      :primary_needs_from_aws,
      :national_security,
      :partner_opportunity_identifier,
      :customer,
      :project,
      :opportunity_type,
      :marketing,
      :software_revenue,
      :last_modified_date,
      :identifier,
      :life_cycle)
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
    # @!attribute [rw] error_list
    #   A list of issues that were discovered in the submitted request or
    #   the resource state.
    #   @return [Array<Types::ValidationExceptionError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :error_list)
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
    # @!attribute [rw] field_name
    #   Specifies the field name with the invalid value.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Specifies the detailed error message for the invalid field value.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   Specifies the error code for the invalid field value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ValidationExceptionError AWS API Documentation
    #
    class ValidationExceptionError < Struct.new(
      :field_name,
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

