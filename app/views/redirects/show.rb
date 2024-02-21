# frozen_string_literal: true

module Lead
  module Views
    module Redirects
      class Show < Lead::View
        include Deps["persistence.rom"]

        expose :redirect do |id:|
          rom.relations[:redirects].by_pk(id).one!
        end
      end
    end
  end
end
