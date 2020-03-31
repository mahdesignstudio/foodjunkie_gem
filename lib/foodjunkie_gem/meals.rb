class FoodjunkieGem::Meals
    attr_accessor :strMeal, :idMeal, :strCategory, :strArea, :strInstructions, :strIngredient1, :strIngredient2, :strIngredient3, :strIngredient4, :strIngredient5  
    
    @@all = []
    
    def initialize(arg)
      update(arg)
      @@all.push(self)
    end
    
    def self.all 
      @@all
    end 

    def update(arg)
      arg.each do |k, v|
        self.send("#{k}=", v) if self.respond_to?("#{k}=")
      end
    end 
    
    def self.clear_all
      @@all.clear
  end      
end 