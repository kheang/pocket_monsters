require 'rails_helper'

describe MonsterLocator do
  include ActiveSupport::Testing::TimeHelpers

  subject { described_class.new }

  describe '#recent_spottings' do
    let(:invisible_monster) { instance_double('Monster', :invisible? => true) }

    context 'when the monster is invisible' do
      it 'should return nil' do
        expect(subject.recent_spottings(invisible_monster)).to be_nil
      end
    end

    context 'when monster is visible' do
      let(:monster) { Monster.create(name: 'Peekachoo') }

      before(:each) do
        Spotting.create(monster: monster, spotted_at: Time.now)
      end

      context 'and spotted within last 24 hours' do
        it 'returns one spotting' do
          expect(subject.recent_spottings(monster).count).to eq 1
        end
      end

      context 'and not spotted within last 24 hours' do
        it 'returns no spottings' do
          travel 25.hours do
            expect(subject.recent_spottings(monster).count).to eq 0
          end
        end
      end
    end
  end
end
