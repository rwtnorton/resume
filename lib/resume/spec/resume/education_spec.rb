require_relative File.join '..', 'common.rb'

describe Resume::Education do

  describe ", by default, " do

    before do
      @it = Resume::Education.new
    end

    it "responds to events" do
      @it.must_respond_to :events
    end

    it "has no events" do
      @it.events.must_be_empty
    end

    it "is enumerable" do
      @it.must_respond_to :each
    end

  end

  describe ", with events, " do

    before do
      @an_event = 42
      @another_event = 13
      @it = Resume::Education.new([@an_event, @another_event])
    end

    it "has sorted events" do
      @it.events.must_equal [@another_event, @an_event]
    end

    it "enumerates sorted events" do
      @it.map { |e| e }.must_equal [@another_event, @an_event]
    end

  end

end
