module Resume
  class Contact

    include Resume::Attrable

    attr_readerable :name, :address, :email, :phone, :url

    def initialize(name, opts={})
      @name = name
      @address = opts[:address]
      @email = opts[:email]
      @phone = opts[:phone]
      @url = opts[:url]
    end

  end
end
