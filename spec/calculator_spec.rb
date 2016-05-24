describe Calculator do

  it 'is initalized with default rates' do
    expect(subject.per_min_rate).to eq 0.34
    expect(subject.wholesale_rate).to eq 2
    expect(subject.rrp_rate).to eq 2.5
  end

  it 'receives costs and production time and returns wholesale price' do
    expect(subject.wholesale(2, 1)).to eq(4.68)
  end

  it 'receives the wholesale price and returns RRP' do
    expect(subject.retail(7.40)).to eq(18.5)
  end 

end
