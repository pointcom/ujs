require 'ujs/ujs_singleton'
require 'ujs/config'
require 'ujs/routing'
require 'ujs/controller_methods'
require 'ujs/behaviors_controller'
require 'ujs/helpers'

ActionController::Routing::RouteSet::Mapper.class_eval do
  include Ujs::Routing::MapperExtensions
end

ActionView::Base.class_eval do
  include Ujs::Helpers
end


ActionController::Base.send(:include, Ujs::ControllerMethods)