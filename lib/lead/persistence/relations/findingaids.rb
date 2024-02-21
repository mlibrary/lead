# frozen_string_literal: true

module Lead
  module Persistence
    module Relations
      class Findingaids < ROM::Relation[:sql]
        schema(:findingaids, infer: true)

        use :pagination
        per_page 5
      end
    end
  end
end
