# frozen_string_literal: true

module Lead
  module Persistence
    module Relations
      class Slugmaps < ROM::Relation[:sql]
        schema(:slugmaps, infer: true)

        use :pagination
        per_page 5
      end
    end
  end
end
