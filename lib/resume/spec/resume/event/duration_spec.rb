require_relative File.join '..', '..', 'common.rb'

describe Resume::Event::Duration do

  describe ", by default, " do

    before do
      @it = Resume::Event::Duration.new
    end

    [
    ].each do |m|
      it "responds_to #{m}" do
        @it.must_respond_to m
      end
    end

  end

end
