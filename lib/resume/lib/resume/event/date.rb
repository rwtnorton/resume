require 'date'
require 'singleton'

module Resume
  class Event
    class Date < ::Date

      class Present < Date
        include Singleton
        include Comparable

        private_class_method :new, :civil, :ordinal, :parse, :jd,
                             :strptime, :commercial

        def <=>(other)
          self.class.today <=> other
        end

        def inspect
          'present'
        end

      end
      # PRESENT = new.tap do |p|
      #   def p.<=>(other_date)
      #     puts "****** Wheeeee ********"
      #     self.class.today <=> other_date
      #   end
      # end

      def self.present
        Present.instance
      end

      def present?
        self == self.class.present
      end

    end
  end
end
