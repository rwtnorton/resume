module Resume
  class Contact

    attr_reader :name
    attr_reader :address
    attr_reader :email
    attr_reader :phone
    attr_reader :url

    def initialize(name, opts={})
      @name = name
      @address = opts[:address]
      @email = opts[:email]
      @phone = opts[:phone]
      @url = opts[:url]
    end

  end
end
