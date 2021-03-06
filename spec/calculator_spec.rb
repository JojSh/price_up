describe Calculator do

  subject(:calculator) { described_class.new}

  describe 'wholesale' do
    it 'receives costs and production time and returns wholesale price' do
      expect(calculator.wholesale(2, 1)).to eq(4.68)
    end
  end

  describe 'retail' do
    it 'receives the wholesale price and returns RRP' do
      expect(calculator.retail(7.40)).to eq(18.5)
    end
  end

  describe 'reset rate per min' do
    it 'can be altered' do
      calculator.set_rate_per_min(0.50)
      expect(calculator.wholesale(2, 1)).to eq(5.00)
    end
  end

  describe 'reset wholesale markup' do
    it 'can be reset' do
      calculator.set_wholesale_markup(2.5)
      expect(calculator.wholesale(2, 1)).to eq(5.85)
    end
  end

  describe 'reset RRP markup' do
    it 'can be reset' do
      calculator.set_rrp_markup(3)
      expect(calculator.retail(3)).to eq(9.00)
    end
  end

end
