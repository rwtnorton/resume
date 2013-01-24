require_relative File.join '..', '..', 'common.rb'

describe Resume::Address::Presenter do

  describe ', with fully specified address, ' do
    before do
      @addr = Resume::Address.new('street', 'city', 'state', 'country',
                                  building: 'building')
      @it = Resume::Address::Presenter.new(@addr)
    end

    it 'has default seperator of space-comma' do
      @it.sep.must_equal ', '
    end

    it 'presents all address attributes' do
      @it.present.must_equal @addr.to_a.join(@it.sep)
    end

  end

  describe ', with partially specified address, ' do
    before do
      @addr = Resume::Address.new('street', nil, 'state', 'country')
      @it = Resume::Address::Presenter.new(@addr, ';')
    end

    it 'uses custom seperator' do
      @it.sep.must_equal(';')
    end

    it 'presents only defined address attributes' do
      @it.present.must_equal @addr.select { |x| x }.join(@it.sep)
    end

  end

end
