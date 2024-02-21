# frozen_string_literal: true

module Lead
  module Views
    module Redirects
      class Index < Lead::View
        include Deps["persistence.rom"]

        expose :redirects do |page:, per_page:|
          rom.relations[:redirects]
            .select(:id, :from, :to)
            .order(:id)
            .page(page)
            .per_page(per_page)
            .to_a
        end
      end
    end
  end
end
