describe Calculator do

  subject(:calculator) { described_class.new}

  describe 'initialize' do
    it 'is initalized with default rates' do
      expect(calculator.per_min_rate).to eq 0.34
      expect(calculator.wholesale_markup).to eq 2
      expect(calculator.rrp_markup).to eq 2.5
    end

  end

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

  describe 'set rate per min' do
    it 'can be altered' do
      calculator.set_rate_per_min(0.50)
      expect(calculator.wholesale(2, 1)).to eq(5.00)
    end
  end

end
