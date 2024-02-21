# frozen_string_literal: true

module Lead
  class Routes < Hanami::Routes
    root { "Hello from Hanami" }
    get "/findingaids", to: "findingaids.index"
    get "/slugmaps", to: "slugmaps.index"
  end
end
