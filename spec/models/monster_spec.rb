require 'rails_helper'

describe Monster do
  let(:monster) { described_class.create(name: 'Ghostly', weight: 5000, height: 1000) }

  it 'battles' do
    expect(monster.battle).to eq true
  end

  describe '#weight_in_kg' do
    it 'returns weight in kilograms' do
      expect(monster.weight_in_kg).to eq 5.0
    end
  end

  describe '#pretty_height' do
    context 'by default' do
      it 'returns height in meters' do
        expect(monster.pretty_height).to eq 1.0
      end
    end

    context 'when passed in :US as system keyword_arg' do
      it 'returns height in feet' do
        expect(monster.pretty_height(system: :US)).to eq 3.3
      end
    end
  end
end
