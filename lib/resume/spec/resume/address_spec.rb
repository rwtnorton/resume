require_relative File.join '..', 'common.rb'

describe Resume::Address do

  describe ', by default, ' do

    before do
      @it = Resume::Address.new nil, nil, nil, nil
    end

    [:street,
     :building,
     :locality,
     :region,
     :country,
    ].each do |m|
      it "responds to #{m}" do
        @it.must_respond_to m
      end

      it "refutes #{m}?" do
        @it.send("#{m}?").must_equal false
      end
    end

  end

  describe ', with fully specified constructor, ' do

    before do
      @vals = {
        street: '123 Main Street',
        building: 'Apt 456789',
        locality: 'Funky Town',
        region: 'Anywhere',
        country: 'Nonesuch',
      }
      args = [:street, :locality, :region, :country].map { |k| @vals[k] }
      opts = @vals.select { |k, _| k == :building }
      @it = Resume::Address.new(*args, opts)
      @ordered_values = [:street,
                         :building,
                         :locality,
                         :region,
                         :country].map { |k| @vals[k] }
    end

    [:street,
     :building,
     :locality,
     :region,
     :country,
    ].each do |m|
      it "has given #{m}" do
        @it.send(m).must_equal @vals[m]
      end

      it "asserts #{m}?" do
        @it.send("#{m}?").must_equal true
      end
    end

    it 'is iterable' do
      @it.to_a.must_equal @ordered_values
    end

    it 'is hashable' do
      @it.to_hash.must_equal @vals
    end

  end

end
