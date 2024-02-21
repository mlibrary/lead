# frozen_string_literal: true

module Lead
  module Views
    module Slugmaps
      class Show < Lead::View
        include Deps["persistence.rom"]

        expose :slugmap do |id:|
          rom.relations[:slugmaps].by_pk(id).one!
        end
      end
    end
  end
end
