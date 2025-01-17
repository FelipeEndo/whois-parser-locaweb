# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.comlaude.com/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.comlaude.com", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.comlaude.com/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.comlaude.com")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect { subject.status }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2005-01-30"))
    expect { subject.updated_on }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2020-01-30"))
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.id).to eq(nil)
    expect(subject.registrar.name).to eq("NOM IQ LTD (DBA COM LAUDE)")
    expect(subject.registrar.url).to eq("http://www.comlaude.com")
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].name).to eq("Domain Manager")
    expect(subject.registrant_contacts[0].organization).to eq("Nom-IQ Ltd dba Com Laude")
    expect(subject.registrant_contacts[0].address).to eq(nil)
    expect(subject.registrant_contacts[0].city).to eq(nil)
    expect(subject.registrant_contacts[0].zip).to eq(nil)
    expect(subject.registrant_contacts[0].state).to eq(nil)
    expect(subject.registrant_contacts[0].country).to eq(nil)
    expect(subject.registrant_contacts[0].phone).to eq("+44.2078360070")
    expect(subject.registrant_contacts[0].fax).to eq(nil)
    expect(subject.registrant_contacts[0].email).to eq("admin@comlaude.com")
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts.size).to eq(1)
    expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
    expect(subject.admin_contacts[0].name).to eq("Domain Manager")
    expect(subject.admin_contacts[0].organization).to eq("Nom-IQ Ltd dba Com Laude")
    expect(subject.admin_contacts[0].address).to eq(nil)
    expect(subject.admin_contacts[0].city).to eq(nil)
    expect(subject.admin_contacts[0].zip).to eq(nil)
    expect(subject.admin_contacts[0].state).to eq(nil)
    expect(subject.admin_contacts[0].country).to eq(nil)
    expect(subject.admin_contacts[0].phone).to eq("+44.2078360070")
    expect(subject.admin_contacts[0].fax).to eq(nil)
    expect(subject.admin_contacts[0].email).to eq("admin@comlaude.com")
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].name).to eq("Technical Manager")
    expect(subject.technical_contacts[0].organization).to eq("Com Laude")
    expect(subject.technical_contacts[0].address).to eq(nil)
    expect(subject.technical_contacts[0].city).to eq(nil)
    expect(subject.technical_contacts[0].zip).to eq(nil)
    expect(subject.technical_contacts[0].state).to eq(nil)
    expect(subject.technical_contacts[0].country).to eq(nil)
    expect(subject.technical_contacts[0].phone).to eq("+44.2074218250")
    expect(subject.technical_contacts[0].fax).to eq("+44.8700118187")
    expect(subject.technical_contacts[0].email).to eq("hostmaster@comlaude.com")
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(4)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("dns1.comlaude-dns.com")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("dns2.comlaude-dns.net")
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("dns3.comlaude-dns.co.uk")
    expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[3].name).to eq("dns4.comlaude-dns.eu")
  end
end
