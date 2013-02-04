require 'forwardable'

module Resume
  class Education

    include Enumerable
    extend Forwardable

    def initialize(events=[])
      @events = events.to_a
    end

    def events
      @events.sort
    end

    def_delegator :events, :each

  end
end
