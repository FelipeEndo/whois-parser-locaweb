# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.io/io/status_reserved.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.io", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.io/io/status_reserved.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.io")
    Whois::Parser.parser_for(part)
  end

  it "matches status_reserved.expected" do
    expect { subject.disclaimer }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.domain).to eq(nil)
    expect(subject.domain_id).to eq(nil)
    expect(subject.status).to eq(:reserved)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to eq(nil)
    expect(subject.updated_on).to eq(nil)
    expect(subject.expires_on).to eq(nil)
    expect(subject.registrar).to eq(nil)
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts).to eq([])
    expect { subject.admin_contacts }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.technical_contacts }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers).to eq([])
    expect(subject.reserved?).to eq(true)
  end
end
