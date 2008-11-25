module Ujs
  module Helpers
    def ujs
      javascript_include_tag(behaviours_path(:controller_name => controller.controller_name, :action_name => controller.action_name))
    end
    
    def at
      UjsSingleton.assigns
    end
  end
end