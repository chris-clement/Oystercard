require 'oystercard'

describe Oystercard do
  it 'card should have a balance' do
    expect(subject.balance).to eq 0
  end

  describe '#top_up' do
    it { is_expected.to respond_to(:top_up).with(1).argument }

    it 'allows us to top up the card by a given value' do 
      expect { subject.top_up 10 }.to change{ subject.balance }.by 10
    end

  end

end
