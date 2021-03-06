require "spec_helper"

describe "Show detail about a movie" do

  it "shows a movie in detail" do

    movie = Movie.create(title: "Iron Man",
                       rating: "PG-13",
                       total_gross: 318412101.00,
                       description: "Tony Stark builds an armored suit to fight the throes of evil",
                       released_on: "2008-05-02")

    visit "http://example.com/movies/#{movie.id}"

    expect(page).to have_text(movie.title)
    expect(page).to have_text(movie.rating)
    expect(page).to have_text("$318,412,101.00")
    expect(page).to have_text(movie.description)
    expect(page).to have_text(movie.released_on)

  end

end