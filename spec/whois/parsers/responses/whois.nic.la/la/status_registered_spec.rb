# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.la/la/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.la", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.la/la/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.la")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.disclaimer).to eq("This whois service is provided by LANIC and only contains information pertaining to Internet domain names registered by our our customers. By using this service you are agreeing (1) not to use any information presented here for any purpose other than determining ownership of domain names, (2) not to store or reproduce this data in any way, (3) not to use any high-volume, automated, electronic processes to obtain data from this service. Abuse of this service is monitored and actions in contravention of these terms will result in being permanently blacklisted. All data is (c) LANIC http://www.lanic.gov.la/ Access to the whois service is rate limited. For more information, please see https://registrar-console.lanic.la/pub/whois_guidance.")
    expect(subject.domain).to eq("google.la")
    expect(subject.domain_id).to eq("D471480-LANIC")
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2002-07-18 01:00:00 UTC"))
    expect(subject.updated_on).to be_a(Time)
    expect(subject.updated_on).to eq(DateTime.parse("2021-07-04 21:39:38 UTC"))
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2022-07-18 23:59:59 UTC"))
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.id).to eq("")
    expect(subject.registrar.name).to eq("TLD Registrar Solutions Ltd")
    expect(subject.registrar.url).to eq("")
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].email).to eq("https://whois.nic.la/contact/google.la/registrant")
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts.size).to eq(1)
    expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
    expect(subject.admin_contacts[0].email).to eq("https://whois.nic.la/contact/google.la/admin")
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].email).to eq("https://whois.nic.la/contact/google.la/tech")
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(4)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns1.google.com")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns2.google.com")
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("ns3.google.com")
    expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[3].name).to eq("ns4.google.com")
  end
end
