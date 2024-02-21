# frozen_string_literal: true

RSpec.feature "Findingaids index pagination", type: [:feature, :database] do
  let(:findingaids) { Hanami.app["persistence.rom"].relations[:findingaids] }

  before do
    10.times do |n|
      findingaids.insert(filename: "filename_#{n}.xml")
    end
  end

  it "returns the correct page of findingaids" do
    visit "/findingaids?page=1&per_page=3"

    expect(page).to have_selector "li", count: 3
    expect(page.find("li:nth-child(1)")).to have_content "filename_0.xml"
    expect(page.find("li:nth-child(2)")).to have_content "filename_1.xml"
    expect(page.find("li:nth-child(3)")).to have_content "filename_2.xml"
  end
end
