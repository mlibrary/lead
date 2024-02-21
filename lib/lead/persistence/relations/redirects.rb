# frozen_string_literal: true

module Lead
  module Persistence
    module Relations
      class Redirects < ROM::Relation[:sql]
        schema(:redirects, infer: true)

        use :pagination
        per_page 5
      end
    end
  end
end
