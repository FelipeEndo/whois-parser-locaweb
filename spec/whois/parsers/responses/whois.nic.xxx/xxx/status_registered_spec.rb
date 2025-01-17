# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.xxx/xxx/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.xxx", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.xxx/xxx/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.xxx")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.disclaimer).to eq("The Service is provided so that you may look up certain information in relation to domain names that we store in our database. Use of the Service is subject to our policies, in particular you should familiarise yourself with our Acceptable Use Policy and our Privacy Policy. The information provided by this Service is 'as is' and we make no guarantee of it its accuracy. You agree that by your use of the Service you will not use the information provided by us in a way which is: * inconsistent with any applicable laws, * inconsistent with any policy issued by us, * to generate, distribute, or facilitate unsolicited mass email, promotions, advertisings or other solicitations, or * to enable high volume, automated, electronic processes that apply to the Service. You acknowledge that: * a response from the Service that a domain name is 'available', does not guarantee that is able to be registered, * we may restrict, suspend or terminate your access to the Service at any time, and * the copying, compilation, repackaging, dissemination or other use of the information provided by the Service is not permitted, without our express written consent. This information has been prepared and published in order to represent administrative and technical management of the TLD. We may discontinue or amend any part or the whole of these Terms of Service from time to time at our absolute discretion.")
    expect(subject.domain).to eq("sex.xxx")
    expect(subject.domain_id).to eq("D855895-GDREG")
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2012-05-31 14:58:50 UTC"))
    expect(subject.updated_on).to be_a(Time)
    expect(subject.updated_on).to eq(DateTime.parse("2021-05-01 08:25:32 UTC"))
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2022-05-31 14:58:50 UTC"))
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.id).to eq("625")
    expect(subject.registrar.name).to eq("Name.com, Inc.")
    expect(subject.registrar.url).to eq("www.name.com")
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].id).to eq("REDACTED FOR PRIVACY")
    expect(subject.registrant_contacts[0].name).to eq("REDACTED FOR PRIVACY")
    expect(subject.registrant_contacts[0].organization).to eq("Domain Protection Services, Inc.")
    expect(subject.registrant_contacts[0].address).to eq("REDACTED FOR PRIVACY, REDACTED FOR PRIVACY, REDACTED FOR PRIVACY")
    expect(subject.registrant_contacts[0].city).to eq("REDACTED FOR PRIVACY")
    expect(subject.registrant_contacts[0].zip).to eq("REDACTED FOR PRIVACY")
    expect(subject.registrant_contacts[0].state).to eq("")
    expect(subject.registrant_contacts[0].country).to eq(nil)
    expect(subject.registrant_contacts[0].country_code).to eq("US")
    expect(subject.registrant_contacts[0].phone).to eq("REDACTED FOR PRIVACY ext: REDACTED FOR PRIVACY")
    expect(subject.registrant_contacts[0].fax).to eq("REDACTED FOR PRIVACY ext: REDACTED FOR PRIVACY")
    expect(subject.registrant_contacts[0].email).to eq("Please query the RDDS service of the Registrar of Record identified in this output for information on how to contact the Registrant, Admin, or Tech contact of the queried domain name.")
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts.size).to eq(1)
    expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
    expect(subject.admin_contacts[0].id).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].name).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].organization).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].address).to eq("REDACTED FOR PRIVACY, REDACTED FOR PRIVACY, REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].city).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].zip).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].state).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].country).to eq(nil)
    expect(subject.admin_contacts[0].country_code).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].phone).to eq("REDACTED FOR PRIVACY ext: REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].fax).to eq("REDACTED FOR PRIVACY ext: REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].email).to eq("Please query the RDDS service of the Registrar of Record identified in this output for information on how to contact the Registrant, Admin, or Tech contact of the queried domain name.")
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].id).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].name).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].organization).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].address).to eq("REDACTED FOR PRIVACY, REDACTED FOR PRIVACY, REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].city).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].zip).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].state).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].country).to eq(nil)
    expect(subject.technical_contacts[0].country_code).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].phone).to eq("REDACTED FOR PRIVACY ext: REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].fax).to eq("REDACTED FOR PRIVACY ext: REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].email).to eq("Please query the RDDS service of the Registrar of Record identified in this output for information on how to contact the Registrant, Admin, or Tech contact of the queried domain name.")
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(4)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns4.imlns.com")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns3.imlns.com")
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("ns1.imlns.com")
    expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[3].name).to eq("ns.imlns.com")
    expect(subject.reserved?).to eq(false)
  end
end
