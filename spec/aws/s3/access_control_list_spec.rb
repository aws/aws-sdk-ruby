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

require 'spec_helper'
require 'rexml/document'

module AWS
  class S3

    describe AccessControlList do

      let(:acl) { AccessControlList.new }

      let(:valid_owner) do
        o = AccessControlList::Owner.new
        o.stub(:to_s).and_return("<Owner/>")
        o.stub(:validate!)
        o.stub(:valid?).and_return(true)
        o
      end

      context 'empty' do

        context '#to_s' do

          it 'should return an empty AccessControlPolicy element' do
            acl.to_s.should == <<END.strip
<AccessControlPolicy xmlns="http://s3.amazonaws.com/doc/2006-03-01/"><AccessControlList/></AccessControlPolicy>
END
          end

        end

        it 'should not be valid' do
          acl.valid?.should be_false
        end

        context 'validate!' do

          it 'should raise an error' do
            lambda { acl.validate! }.
              should raise_error("missing owner")
          end

        end

      end

      shared_examples_for "valid ACL" do

        it 'should be valid' do
          acl.valid?.should be_true
        end

        context 'validate!' do

          it 'should not raise an error' do
            lambda { acl.validate! }.should_not raise_error
          end

        end

      end

      shared_examples_for "invalid ACL" do |*args|

        it 'should not be valid' do
          acl.valid?.should be_false
        end

        context 'validate!' do

          it 'should raise an error' do
            lambda { acl.validate! }.
              should raise_error(*args)
          end

        end

      end

      shared_examples_for "accepts owner input" do

        it 'should accept nil' do
          lambda { use_input(nil) }.should_not raise_error
        end

        it 'should accept an Owner' do
          lambda { use_input(AccessControlList::Owner.new) }.should_not raise_error
        end

        context 'hash input' do

          let(:owner) { double("owner",
                               :validate! => nil) }

          before(:each) do
            AccessControlList::Owner.stub(:new).and_return(owner)
          end

          it 'should be accepted' do
            lambda { use_input({}) }.should_not raise_error
          end

          it 'should not be accepted if invalid' do
            owner.stub(:validate!).and_raise("FOO")
            lambda { use_input({}) }.should raise_error(/FOO/)
          end

        end

        it 'should not accept a different kind of object' do
          lambda { use_input(Object.new) }.
            should raise_error(ArgumentError, /expected Owner object/)
        end

      end

      shared_examples_for "with an owner" do

        let(:owner) { valid_owner }

        context '#owner' do
          it 'should return the owner' do
            acl.owner = owner
          end
        end

        context '#to_s' do

          it 'should include the Owner XML' do
            acl.to_s.should == <<END.strip
<AccessControlPolicy xmlns="http://s3.amazonaws.com/doc/2006-03-01/"><Owner/><AccessControlList/></AccessControlPolicy>
END
          end

        end

        it_behaves_like 'valid ACL'

        context 'invalid owner' do

          before(:each) do
            owner.stub(:valid?).and_return(false)
            owner.stub(:validate!).and_raise("FOO")
          end

          it_behaves_like 'invalid ACL', /FOO/

        end

        context 'hash input' do

          let(:owner) { {} }

          let(:owner_obj) { double("owner",
                                   :validate! => nil) }

          it 'should construct an Owner from the hash' do
            AccessControlList::Owner.stub(:new).and_return(owner_obj)
            acl.owner.should == owner_obj
          end

        end

      end

      context '#owner=' do

        it_behaves_like "accepts owner input" do
          def use_input(input)
            acl.owner = input
          end
        end

        it_behaves_like "with an owner" do
          let(:acl) do
            acl = AccessControlList.new
            acl.owner = owner
            acl
          end
        end

      end

      shared_examples_for "accepts grants input" do

        it 'should not accept nil' do
          lambda { use_input(nil) }.
            should raise_error(ArgumentError, /expected array/)
        end

        it 'should accept an empty array' do
          lambda { use_input([]) }.should_not raise_error
        end

        context 'hash input' do

          let(:grant) { double("grant",
                               :validate! => nil) }

          before(:each) { AccessControlList::Grant.stub(:new).and_return(grant) }

          it 'should be accepted' do
            lambda { use_input([{}]) }.should_not raise_error
          end

          it 'should be not be accepted if invalid' do
            grant.stub(:validate!).and_raise("FOO")
            lambda { use_input([{}]) }.should raise_error(/FOO/)
          end

        end

        it 'should accept an array of Grant objects' do
          lambda { use_input([AccessControlList::Grant.new]) }.should_not raise_error
        end

        it 'should not accept an array of other kinds of objects' do
          lambda { use_input([Object.new]) }.
            should raise_error(ArgumentError, /contain Grant objects/)
        end

      end

      shared_examples_for "with a grant" do

        before(:each) { acl.owner = valid_owner }

        let(:grant) do
          g = AccessControlList::Grant.new
          g.stub(:to_s).and_return("<Grant/>")
          g.stub(:valid?).and_return(true)
          g.stub(:validate!)
          g
        end

        context '#grants' do
          it 'should return the array of grants' do
            acl.grants.should == [grant]
          end
        end

        context '#to_s' do

          it 'should include the grant XML' do
            REXML::Document.new(acl.to_s).elements["//AccessControlList/Grant"].to_s.should ==
              '<Grant/>'
          end

        end

        it_behaves_like 'valid ACL'

        context 'invalid grant' do

          before(:each) do
            grant.stub(:valid?).and_return(false)
            grant.stub(:validate!).and_raise("FOO")
          end

          it_behaves_like 'invalid ACL', /FOO/

        end

      end

      context '#grants=' do

        it_behaves_like 'accepts grants input' do
          def use_input(input)
            acl.grants = input
          end
        end

        it_behaves_like 'with a grant' do
          let(:acl) do
            acl = AccessControlList.new
            acl.grants = [grant]
            acl
          end
        end

        context 'hash input' do

          let(:grant) { {} }

          let(:grant_obj) { double("grant",
                                   :validate! => nil) }

          it 'should construct a Grant from the hash' do
            AccessControlList::Grant.stub(:new).and_return(grant_obj)
            acl.grants = [grant]
          end

        end

      end

      context '#initialize' do

        context 'owner option' do

          it_behaves_like "accepts owner input" do
            def use_input(input)
              AccessControlList.new(:owner => input)
            end
          end

          it_behaves_like "with an owner" do
            let(:acl) { AccessControlList.new(:owner => owner) }
          end

        end

        context 'grants option' do

          it_behaves_like 'accepts grants input' do
            def use_input(input)
              AccessControlList.new(:grants => input)
            end
          end

          it_behaves_like "with a grant" do
            let(:acl) { AccessControlList.new(:grants => [grant]) }
          end

        end

      end

      context '#grant' do

        let(:grant) { double("a grant",
                             :grantee= => nil,
                             :to_s => "<Grant/>",
                             :validate! => nil) }

        before(:each) do
          AccessControlList::Grant.stub(:new).and_return(grant)
        end

        it 'constructs a Grant' do
          AccessControlList::Grant.should_receive(:new).
            with(:permission => :full_control).
            and_return(grant)
          acl.grant(:full_control)
        end

        it 'should let you set the grantee' do
          grantee = double("grantee")
          grant.should_receive(:grantee=).with(grantee)
          acl.grant(:full_control).to(grantee)
        end

        it 'should add the grant to the list when you set the grantee' do
          acl.grant(:full_control).to(double("a grantee"))
          acl.grants.should include(grant)
        end

      end

    end

    class AccessControlList

      describe Owner do

        let(:owner) { Owner.new }

        context 'empty' do

          context '#to_s' do

            it 'should return an empty Owner element' do
              owner.to_s.should == "<Owner/>"
            end

          end

          context '#validate!' do

            it 'should raise an error' do
              lambda { owner.validate! }.
                should raise_error("missing id")
            end

          end

        end

        context 'with id' do

          shared_examples_for "it has an ID" do

            context '#to_s' do

              it 'should include an ID element' do
                owner.to_s.should ==
                  "<Owner><ID>string</ID></Owner>"
              end

            end

            context '#validate!' do

              it 'should not raise an error' do
                lambda { owner.validate! }.should_not raise_error
              end

            end

          end

          context 'using accessor' do
            it_behaves_like "it has an ID" do
              before(:each) { owner.id = "string" }
            end
          end

          context 'using initializer option' do
            it_behaves_like "it has an ID" do
              let(:owner) { Owner.new(:id => "string") }
            end
          end

        end

        context 'with a display name' do

          shared_examples_for "it has a display name" do

            context '#to_s' do

              it 'should include a DisplayName element' do
                owner.to_s.should ==
                  "<Owner><DisplayName>name</DisplayName></Owner>"
              end

            end

            context '#validate!' do

              it 'should raise an error' do
                lambda { owner.validate! }.should raise_error("missing id")
              end

            end

          end

          context 'using accessor' do
            it_behaves_like 'it has a display name' do
              before(:each) { owner.display_name = "name" }
            end

            it 'should escape XML characters' do
              owner.display_name = "<'\"this&that\"'>"
              owner.to_s.should ==
                "<Owner><DisplayName>&lt;&apos;&quot;this&amp;that&quot;&apos;&gt;" +
                "</DisplayName></Owner>"
            end
          end

          context 'using initializer option' do
            it_behaves_like 'it has a display name' do
              let(:owner) { Owner.new(:display_name => "name") }
            end
          end

        end

      end

      describe Grant do

        let(:grant) { Grant.new }

        context 'empty' do

          context '#to_s' do

            it 'should be an empty Grant element' do
              grant.to_s.should == "<Grant/>"
            end

          end

          context '#validate!' do

            it 'should raise an error' do
              lambda { grant.validate! }.
                should raise_error("missing grantee")
            end

          end

        end

        context 'with grantee' do

          shared_examples_for 'it has a grantee' do

            let(:grantee) do
              grantee = Grantee.new
              grantee.stub(:to_s).and_return("<Grantee/>")
              grantee.stub(:validate!)
              grantee
            end

            context '#to_s' do

              it 'should include the grantee XML' do
                grant.to_s.should == "<Grant><Grantee/></Grant>"
              end

            end

            context '#validate!' do

              it 'should raise an error' do
                lambda { grant.validate! }.
                  should raise_error("missing permission")
              end

            end

          end

          context 'using accessor' do

            it_behaves_like 'it has a grantee' do
              before(:each) { grant.grantee = grantee }
            end

            it 'should reject a string' do
              lambda { grant.grantee = "FOO" }.
                should raise_error(ArgumentError, "expected Grantee object or hash")
            end

            context 'with a hash' do

              let(:grantee) { {} }

              let(:grantee_obj) { double("grantee",
                                         :to_s => "<Grantee/>",
                                         :validate! => nil) }

              it 'should call the Grantee constructor with the hash' do
                Grantee.should_receive(:new).twice.with(grantee).and_return(grantee_obj)
                grant.grantee = grantee
              end

              it_behaves_like 'it has a grantee' do
                before(:each) do
                  Grantee.stub(:new).and_return(grantee_obj)
                  grant.grantee = {}
                end
              end

            end

          end

          context 'using initializer option' do
            it_behaves_like 'it has a grantee' do
              let(:grant) { Grant.new(:grantee => grantee) }
            end
          end

        end

        context 'with permission' do

          shared_examples_for 'it has a permission' do

            let(:permission) do
              p = Permission.new("foo")
              p.stub(:to_s).and_return("<Permission/>")
              p.stub(:validate!)
              p
            end

            context '#to_s' do

              it 'should include the Permission element' do
                grant.to_s.should == "<Grant><Permission/></Grant>"
              end

            end

            context '#validate! (with a grantee)' do

              let(:grantee) do
                grantee = Grantee.new
                grantee.stub(:to_s).and_return("<Grantee/>")
                grantee.stub(:validate!)
                grantee
              end

              before(:each) { grant.grantee = grantee }

              it 'should not raise an error' do
                lambda { grant.validate! }.should_not raise_error
              end

            end

          end

          context 'using accessor' do

            it_behaves_like 'it has a permission' do
              before(:each) { grant.permission = permission }
            end

            context 'with a symbol' do

              let(:permission) { :foo }

              let(:permission_obj) { double("permission",
                                            :to_s => "<Permission/>",
                                            :validate! => nil) }


              it 'should call the Permission constructor with the symbol' do
                Permission.should_receive(:new).twice.
                  with(permission).and_return(permission_obj)
                grant.permission = permission
              end

              it_behaves_like 'it has a permission' do
                before(:each) do
                  Permission.stub(:new).and_return(permission_obj)
                  grant.permission = :foo
                end
              end

            end

          end

          context 'using initializer option' do
            it_behaves_like 'it has a permission' do
              let(:grant) { Grant.new(:permission => permission) }
            end
          end

        end

      end

      describe Grantee do

        let(:grantee) { Grantee.new }

        context 'empty' do

          context '#to_s' do

            it 'should contain a Grantee element' do
              grantee.to_s.should == "<Grantee/>"
            end

          end

          context '#validate!' do

            it 'should raise an error' do
              lambda { grantee.validate! }.
                should raise_error("missing amazon_customer_email, canonical_user_id, or group_uri")
            end

          end

        end

        shared_examples_for 'has signal attribute' do |*args|
          opts = args.last || {}
          element = opts[:element]
          name = opts[:name] || Inflection.ruby_name(element)
          type = opts[:type]
          example = opts[:example]

          context "with #{name}" do

            shared_examples_for "it has an attribute '#{name}'" do

              context '#to_s' do

                it 'should contain a type and an EmailAddress element' do
                  grantee.to_s.should ==
                    '<Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"'+
                    " xsi:type=\"#{type}\">"+
                    "<#{element}>#{example}</#{element}></Grantee>"
                end

              end

              context '#validate!' do

                it 'should not raise an error' do
                  lambda { grantee.validate! }.should_not raise_error
                end

              end

            end

            context 'using accessor' do
              it_behaves_like "it has an attribute '#{name}'" do
                before(:each) { grantee.send("#{name}=", example) }
              end
            end

            context 'using initializer option' do
              it_behaves_like "it has an attribute '#{name}'" do
                let(:grantee) do
                  opts = {}
                  opts[name.to_sym] = example
                  Grantee.new(opts)
                end
              end
            end

          end

        end

        it_behaves_like('has signal attribute',
                        :element => "EmailAddress",
                        :name => "amazon_customer_email",
                        :type => "AmazonCustomerByEmail",
                        :example => "foo@example.com")

        it_behaves_like('has signal attribute',
                        :element => "ID",
                        :name => "canonical_user_id",
                        :type => "CanonicalUser",
                        :example => "abc123")

        it_behaves_like('has signal attribute',
                        :element => "URI",
                        :name => "group_uri",
                        :type => "Group",
                        :example => "http://foo.com/mygroup")

        context 'with display_name' do

          let(:grantee) { Grantee.new(:canonical_user_id => "abc123") }

          before(:each) do
            grantee.display_name = "Alice & Bob"
          end

          context '#to_s' do

            it 'should contain a DisplayName element' do
              grantee.to_s.should ==
                '<Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"'+
                ' xsi:type="CanonicalUser">'+
                '<ID>abc123</ID><DisplayName>Alice &amp; Bob</DisplayName></Grantee>'
            end

          end

          context '#validate!' do

            it 'should not raise an error' do
              lambda { grantee.validate! }.should_not raise_error
            end

            context 'with incompatible signal attribute' do

              let(:grantee) { Grantee.new(:amazon_customer_email => "foo@example.com") }

              it 'should raise an error' do
                lambda { grantee.validate! }.
                  should raise_error("display_name is invalid with amazon_customer_email")
              end

            end

          end

        end

      end

      describe Permission do

        context '#initialize' do

          it 'should accept a string' do
            lambda { Permission.new("foo") }.should_not raise_error
          end

          it 'should accept a symbol' do
            lambda { Permission.new(:foo) }.should_not raise_error
          end

          it 'should not accept another kind of object' do
            lambda { Permission.new(Object.new) }.
              should raise_error("expected string or symbol")
          end

        end

        let(:permission) { Permission.new(:full_control) }

        context '#to_s' do

          it 'should contain a Permission element with the capitalized permission' do
            permission.to_s.should == "<Permission>FULL_CONTROL</Permission>"
          end

        end

        context '#validate!' do

          it 'should not raise an error' do
            lambda { permission.validate! }.should_not raise_error
          end

          # TODO: enum-style constraint?

        end

      end

    end

  end
end
