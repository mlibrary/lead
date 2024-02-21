# frozen_string_literal: true

RSpec.feature "Showing a findingaid", type: [:feature, :database] do
  let(:findingaids) { Hanami.app["persistence.rom"].relations[:findingaids] }

  context "when a findingaid matches the given ID" do
    let!(:findingaid_id) do
      findingaids.insert(filename: "filename.xml")
    end

    it "shows the findingaid" do
      visit "/findingaids/#{findingaid_id}"

      expect(page).to have_content "filename.xml"
    end
  end

  context "when no findingaid matches the given ID" do
    it "returns not found" do
      visit "/findingaids/#{findingaids.max(:id).to_i + 1}"

      expect(page.status_code).to eq 404
    end
  end
end
