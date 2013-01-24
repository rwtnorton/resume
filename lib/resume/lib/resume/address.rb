require 'resume/address/presenter'

module Resume
  class Address

    include Resume::Attrable
    include Enumerable

    ATTRS = [:street, :building, :locality, :region, :country]

    attr_readerable *ATTRS

    def initialize(street, locality, region, country, opts={})
      @street = street
      @locality = locality
      @region = region
      @country = country
      @building = opts[:building]
    end

    def each
      ATTRS.each do |m|
        yield send(m)
      end
    end

    def to_hash
      Hash[ATTRS.map { |m| [m, send(m) ] }]
    end

  end
end
