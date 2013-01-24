require_relative File.join '..', 'common.rb'

describe Resume::Contact do

  describe ', by default, ' do

    before do
      @it = Resume::Contact.new nil
    end

    [:name,
     :address,
     :email,
     :phone,
     :url,
    ].each do |m|
      it "has #{m}" do
        @it.must_respond_to m
      end
    end

  end

  describe ', using fully specified constructor, ' do

    before do
      @vals = {
        name: 'Foo Bar, the Baz',
        address: '123 Main Street, Springfield, VA, 22150',
        email: 'xyzzy@example.com',
        phone: '918-555-1234',
        url: 'http://example.com',
      }
      name = @vals[:name]
      opts = @vals.reject { |k, _| k == :name }
      @it = Resume::Contact.new(name, opts)
    end

    [:name,
     :address,
     :email,
     :phone,
     :url,
    ].each do |m|
      it "has given #{m}" do
        @it.send(m).must_equal @vals[m]
      end
    end

  end

end
