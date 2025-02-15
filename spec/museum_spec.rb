require './lib/museum'
require './lib/exhibit'
require './lib/patron'


RSpec.describe Museum do

  before(:each) do
    @dmns = Museum.new("Denver Museum of Nature and Science")
    @gems_and_minerals = Exhibit.new({name: "Gems and Minerals", cost: 0})
    @dead_sea_scrolls = Exhibit.new({name: "Dead Sea Scrolls", cost: 10})
    @imax = Exhibit.new({name: "IMAX",cost: 15})
    @patron_1 = Patron.new("Bob", 0)
  end

  it 'exists' do
    expect(@dmns).to be_an_instance_of(Museum)
  end

  it 'has a name' do
    expect(@dmns.name).to eq("Denver Museum of Nature and Science")
  end

  it 'returns no exhibits' do
    expect(@dmns.exhibits).to eq([])
  end

  it 'returns exhibits' do
    @dmns.add_exhibit(@gems_and_minerals)
    @dmns.add_exhibit(@dead_sea_scrolls)
    @dmns.add_exhibit(@imax)

    expect(@dmns.exhibits).to eq([@gems_and_minerals, @dead_sea_scrolls, @imax])
  end

  it 'can return patrons' do


      expect(@dmns.patrons).to eq([])
  end
end
