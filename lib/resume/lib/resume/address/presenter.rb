module Resume
  class Address
    class Presenter

      attr_reader :address, :sep

      def initialize(address, sep=', ')
        @address = address
        @sep = sep
      end

      def present
        address.select { |x| x }.join(sep)
      end

    end
  end
end
