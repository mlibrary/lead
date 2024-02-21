# frozen_string_literal: true

RSpec.feature "Showing a redirect", type: [:feature, :database] do
  let(:redirects) { relations[:redirects] }

  context "when a redirect matches the given ID" do
    let!(:redirect_id) do
      redirects.insert(from: "from", to: "to")
    end

    it "shows the redirect" do
      visit "/redirects/#{redirect_id}"

      expect(page).to have_content "from"
      expect(page).to have_content "to"
    end
  end

  context "when no redirect matches the given ID" do
    it "returns not found" do
      visit "/redirects/#{redirects.max(:id).to_i + 1}"

      expect(page.status_code).to eq 404
    end
  end
end
