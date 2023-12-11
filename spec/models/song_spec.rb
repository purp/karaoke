require 'rails_helper'

RSpec.describe Song, type: :model do

  before( :all ) do
    @song = Song.create(
        category: "Sad",
        performer: "Jared",
        url: "https://www.youtube.com/watch?v=rSWHCZoX2mE" )
  end  

  it 'checks that a song can be created' do
    expect(@song).to be_valid
  end

  it 'checks that a song can be read' do
    expect( Song.find_by( url: "https://www.youtube.com/watch?v=rSWHCZoX2mE" ) ).to eq( @song )
  end

  it 'checks that a song can be updated' do
    @song.update( url: "https://www.youtube.com/watch?v=_XaTOwSw0Jw" )
    expect( Song.find_by( url: "https://www.youtube.com/watch?v=_XaTOwSw0Jw" ) ).to eq( @song )
  end

  it 'checks that a song can be destroyed' do
    @song.destroy
    expect( Song.count ).to eq( 0 )
  end

  it 'checks that a song can be destroyed' do
    @song.destroy
    expect( Song.find_by( url: "https://www.youtube.com/watch?v=_XaTOwSw0Jw" ) ).to be_nil
  end
  
  after :all do
    Song.destroy_all
  end

end