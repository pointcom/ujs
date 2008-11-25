class UjsSingleton
  attr_accessor :assigns
  
  def self.init(assigns)
    unless defined?(@@instance)
      @@instance = new(assigns) 
    else
      @@instance.assigns = assigns
    end
    @@instance
  end
  
  def self.assigns
    @@instance.assigns.with_indifferent_access if defined?(@@instance)
  end
  
  def initialize(assigns)
    @assigns = assigns
  end
end