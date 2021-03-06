require 'spec_helper'

describe "Navigating movies" do
  it "allows navigation from the detail page to the listing page" do
    movie = Movie.create(movie_attributes())

    visit movie_url(movie)

    click_link "All Movies"

    expect(current_path).to eq(movies_path)
  end
end