require_relative File.join '..', 'common.rb'

describe Resume::Event do

  describe ", by default, " do

    before do
      @it = Resume::Event.new
    end

    [
     :duration,
    ].each do |m|
      it "responds_to #{m}" do
        @it.must_respond_to m
      end
    end

  end

end
