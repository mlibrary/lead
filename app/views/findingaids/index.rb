# frozen_string_literal: true

module Lead
  module Views
    module Findingaids
      class Index < Lead::View
        include Deps["persistence.rom"]

        expose :findingaids do |page:, per_page:|
          rom.relations[:findingaids]
            .select(:id, :filename)
            .order(:id)
            .page(page)
            .per_page(per_page)
            .to_a
        end
      end
    end
  end
end
