module Ujs::ControllerMethods
  def self.included(base)
    base.class_eval do
      after_filter :store_instance_variables      
    end
  end

  protected
    def store_instance_variables
      UjsSingleton.init(assigns)
    end
end