# frozen_string_literal: true

RSpec.feature "Showing a slugmap", type: [:feature, :database] do
  let(:slugmaps) { relations[:slugmaps] }

  context "when a slugmap matches the given ID" do
    let!(:slugmap_id) do
      slugmaps.insert(corpname: "corpname", reposlug: "reposlug")
    end

    it "shows the slugmap" do
      visit "/slugmaps/#{slugmap_id}"

      expect(page).to have_content "corpname"
      expect(page).to have_content "reposlug"
    end
  end

  context "when no slugmap matches the given ID" do
    it "returns not found" do
      visit "/slugmaps/#{slugmaps.max(:id).to_i + 1}"

      expect(page.status_code).to eq 404
    end
  end
end
