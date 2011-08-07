module Snip
  require 'rails_extensions/routing/route_extensions'
  require 'rails_extensions/routing/route_set_extensions'
  require 'action_controller/routing'

  ActionController::Routing::RouteSet.send :include,
    Snip::Routing::RouteSetExtensions

  ActionController::Routing::Route.send :include,
    Snip::Routing::RouteExtensions
end
