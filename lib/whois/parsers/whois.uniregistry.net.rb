#--
# Ruby Whois
#
# An intelligent pure Ruby WHOIS client and parser.
#
# Copyright (c) 2009-2018 Simone Carletti <weppos@weppos.net>
#++


require_relative 'base_icann_compliant'


module Whois
  class Parsers

    # Parser for the whois.donuts.com server.
    #
    # @see Whois::Parsers::Example
    #   The Example parser for the list of all available methods.
    #
    class WhoisUniregistryNet < BaseIcannCompliant
      self.scanner = Scanners::BaseIcannCompliant, {
          pattern_available: />>> Domain \".+\" is available/
      }


      property_supported :domain_id do
        node('Domain ID')
      end


      property_supported :registrar do
        return unless node('Sponsoring Registrar')
        Parser::Registrar.new(
            id:           node('Sponsoring Registrar IANA ID'),
            name:         node('Sponsoring Registrar')
        )
      end


      private

      def build_contact(element, type)
        if (contact = super)
          contact.id = node("#{element} ID")
        end
        contact
      end

    end

  end
end
