module Ujs
  class BehaviorsController < ActionController::Base
    append_view_path(Ujs::UJS_ROOT)
    skip_after_filter :store_instance_variables
    
    def generate
      #raise UjsFactory.assigns.inspect
      headers['Content-Type'] = 'text/javascript; charset=utf-8'
      render :template => File.join(params[:controller_name], params[:action_name]), :layout => false, :format => :ujs
    end
  end
end