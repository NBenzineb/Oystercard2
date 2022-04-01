require_relative '../lib/journey_log.rb'

describe JourneyLog do

    let(:journey_class) { Journey }
    subject(:journey_log) { described_class.new(journey_class) }
  
    describe "#initialize" do
      context "testing #new on class" do
        subject(:journey_log_class) { described_class }
        it { is_expected.to respond_to(:new).with(1).argument }
      end
      it "has a journey_class" do
        expect(journey_log.journey_class).to eq Journey
      end
      it "has an empty journeys array" do
        expect(journey_log.journeys).to be_empty
      end
    end
   
    describe '#start' do
      it 'starts a new journey' do
        subject.start("Bank")
        subject.current_journey
        expect(subject.current_journey).to be_a(Journey)
      end
    end

    # describe '#current_journey' do
    #   it 'should return an incomplete journey' do
    #     subject.start("Bank")
    #     expect (subject.current_journey.exit_station).to be_nil
    #   end
    # end
    
    describe '#finish' do
      it 'add an exit station to the current journey' do
        subject.start("Bank")
        p subject.current_journey
        subject.finish("Westminster")
        p subject.current_journey
        expect(subject.current_journey.exit_station).to eq "Westminster"
      end
    end
  end