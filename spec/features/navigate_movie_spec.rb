require 'spec_helper'

describe "Navigating to movie" do
  it "allows navigation from the listing page to the detail page" do
    movie = Movie.create(movie_attributes())

    visit movies_url

    click_link movie.title

    expect(current_path).to eq(movie_path(movie))
  end
end