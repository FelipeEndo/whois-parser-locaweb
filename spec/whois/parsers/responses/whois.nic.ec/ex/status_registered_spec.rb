# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.ec/ex/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.ec", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.ec/ex/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.ec")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.domain).to eq("google.ec")
    expect { subject.domain_id }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2003-10-16 00:00:00"))
    expect(subject.updated_on).to be_a(Time)
    expect(subject.updated_on).to eq(DateTime.parse("2013-09-17 00:00:00"))
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2014-10-16 00:00:00"))
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.id).to eq(nil)
    expect(subject.registrar.name).to eq("MarkMonitor Inc.")
    expect(subject.registrar.url).to eq("www.markmonitor.com")
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(4)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns1.google.com")
    expect(subject.nameservers[0].ipv4).to eq(nil)
    expect(subject.nameservers[0].ipv6).to eq(nil)
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns2.google.com")
    expect(subject.nameservers[1].ipv4).to eq(nil)
    expect(subject.nameservers[1].ipv6).to eq(nil)
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("ns3.google.com")
    expect(subject.nameservers[2].ipv4).to eq(nil)
    expect(subject.nameservers[2].ipv6).to eq(nil)
    expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[3].name).to eq("ns4.google.com")
    expect(subject.nameservers[3].ipv4).to eq(nil)
    expect(subject.nameservers[3].ipv6).to eq(nil)
  end
end
