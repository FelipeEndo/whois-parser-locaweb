# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.fo/fo/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.fo", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.fo/fo/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.fo")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.domain).to eq("nic.fo")
    expect { subject.domain_id }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2010-06-03 03:34:05"))
    expect(subject.updated_on).to be_a(Time)
    expect(subject.updated_on).to eq(DateTime.parse("2011-07-12 12:52:57"))
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2015-01-03"))
    expect { subject.registrar }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].id).to eq("ID005359")
    expect(subject.registrant_contacts[0].name).to eq(nil)
    expect(subject.registrant_contacts[0].organization).to eq("FO-umsitingin")
    expect(subject.registrant_contacts[0].address).to eq("Hoydalsvegur 19, Postboks 1255")
    expect(subject.registrant_contacts[0].city).to eq("Torshavn")
    expect(subject.registrant_contacts[0].zip).to eq("110")
    expect(subject.registrant_contacts[0].state).to eq(nil)
    expect(subject.registrant_contacts[0].country).to eq(nil)
    expect(subject.registrant_contacts[0].country_code).to eq("FO")
    expect(subject.registrant_contacts[0].phone).to eq("+298.322400")
    expect(subject.registrant_contacts[0].fax).to eq(nil)
    expect(subject.registrant_contacts[0].email).to eq(nil)
    expect(subject.registrant_contacts[0].created_on).to eq(DateTime.parse("2010-07-21 19:11:55"))
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts).to eq([])
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].id).to eq("ID005359")
    expect(subject.technical_contacts[0].name).to eq(nil)
    expect(subject.technical_contacts[0].organization).to eq("FO-umsitingin")
    expect(subject.technical_contacts[0].address).to eq("Hoydalsvegur 19, Postboks 1255")
    expect(subject.technical_contacts[0].city).to eq("Torshavn")
    expect(subject.technical_contacts[0].zip).to eq("110")
    expect(subject.technical_contacts[0].state).to eq(nil)
    expect(subject.technical_contacts[0].country).to eq(nil)
    expect(subject.technical_contacts[0].country_code).to eq("FO")
    expect(subject.technical_contacts[0].phone).to eq("+298.322400")
    expect(subject.technical_contacts[0].fax).to eq(nil)
    expect(subject.technical_contacts[0].email).to eq(nil)
    expect(subject.technical_contacts[0].created_on).to eq(DateTime.parse("2010-07-21 19:11:55"))
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(5)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns1.gratisdns.dk")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns2.gratisdns.dk")
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("ns3.gratisdns.dk")
    expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[3].name).to eq("ns4.gratisdns.dk")
    expect(subject.nameservers[4]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[4].name).to eq("ns5.gratisdns.dk")
  end
end
