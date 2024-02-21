# frozen_string_literal: true

module Lead
  module Views
    module Findingaids
      class Show < Lead::View
        include Deps["persistence.rom"]

        expose :findingaid do |id:|
          rom.relations[:findingaids].by_pk(id).one!
        end
      end
    end
  end
end
