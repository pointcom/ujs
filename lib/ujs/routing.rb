module Ujs
  
  module Routing
    # TODO add an implied route so that '/behaviors/*path.js' hits 'ujs/behavior_controller'
    # action behavior
    
    module MapperExtensions
      
      def behaviors(options={})
        options = options.merge(
          :controller => "ujs/behaviors",
          :action => "generate",
          #:requirements => { :path => /.+\.js/ },
          :conditions => { :method => :get },
          :format => :ujs
        )
        @set.add_named_route('behaviours', '/behaviors/:controller_name/:action_name.js', options)
      end
      
    end
      
      
  end
  
end