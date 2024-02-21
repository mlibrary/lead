# frozen_string_literal: true

RSpec.feature "Slugmaps index pagination", type: [:feature, :database] do
  let(:slugmaps) { relations[:slugmaps] }

  before do
    10.times do |n|
      slugmaps.insert(corpname: "corpname_#{n}", reposlug: n.to_s)
    end
  end

  it "returns the correct page of slugmaps" do
    visit "/slugmaps?page=1&per_page=3"

    expect(page).to have_selector "li", count: 3
    expect(page.find("li:nth-child(1)")).to have_content "corpname_0, 0"
    expect(page.find("li:nth-child(2)")).to have_content "corpname_1, 1"
    expect(page.find("li:nth-child(3)")).to have_content "corpname_2, 2"
  end
end
