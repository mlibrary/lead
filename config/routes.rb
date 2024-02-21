# frozen_string_literal: true

module Lead
  class Routes < Hanami::Routes
    root { "Hello from Hanami" }

    get "/findingaids", to: "findingaids.index"
    get "/findingaids/:id", to: "findingaids.show"

    get "/redirects", to: "redirects.index"
    get "/redirects/:id", to: "redirects.show"

    get "/slugmaps", to: "slugmaps.index"
    get "/slugmaps/:id", to: "slugmaps.show"
  end
end
