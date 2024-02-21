# frozen_string_literal: true

module Lead
  module Views
    module Slugmaps
      class Index < Lead::View
        include Deps["persistence.rom"]

        expose :slugmaps do |page:, per_page:|
          rom.relations[:slugmaps]
            .select(:id, :corpname, :reposlug)
            .order(:id)
            .page(page)
            .per_page(per_page)
            .to_a
        end
      end
    end
  end
end
