require_relative File.join '..', '..', 'common.rb'

describe Resume::Event::Date do

  describe ", by default, " do

    before do
      @it = Resume::Event::Date.new
    end

    [
     :<=>,
    ].each do |m|
      it "responds_to #{m}" do
        @it.must_respond_to m
      end
    end

    describe ", regarding the present, " do

      before do
        @it = Resume::Event::Date
      end

      it "responds to the present" do
        @it.must_respond_to :present
      end

      it "keeps past behind the present" do
        @it.today.prev_day.must_be :<, @it.present
      end

    end
  end

end
