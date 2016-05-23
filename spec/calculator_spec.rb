describe Calculator do

  it 'is initalized with default rates' do

  end

  it 'receives costs and production time and returns wholesale price' do
    expect(subject.wholesale(2, 1)).to eq(4.68)
  end

  it 'receives the wholesale price and returns RRP' do
    expect(subject.retail(7.40)).to eq(18.5)
  end

end
