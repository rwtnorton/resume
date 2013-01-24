module Resume
  class Contact

    ATTR_NAMES = [:name, :address, :email, :phone, :url]

    attr_reader *ATTR_NAMES

    def initialize(name, opts={})
      @name = name
      @address = opts[:address]
      @email = opts[:email]
      @phone = opts[:phone]
      @url = opts[:url]
    end

    ATTR_NAMES.each do |attr|
      define_method "#{attr}?" do
        !!send(attr)
      end
    end

  end
end
