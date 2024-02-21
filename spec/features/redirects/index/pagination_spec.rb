# frozen_string_literal: true

RSpec.feature "Redirects index pagination", type: [:feature, :database] do
  let(:redirects) { Hanami.app["persistence.rom"].relations[:redirects] }

  before do
    10.times do |n|
      redirects.insert(from: "from_#{n}", to: "to_#{n}")
    end
  end

  it "returns the correct page of redirects" do
    visit "/redirects?page=1&per_page=3"

    expect(page).to have_selector "li", count: 3
    expect(page.find("li:nth-child(1)")).to have_content "from_0, to_0"
    expect(page.find("li:nth-child(2)")).to have_content "from_1, to_1"
    expect(page.find("li:nth-child(3)")).to have_content "from_2, to_2"
  end
end
