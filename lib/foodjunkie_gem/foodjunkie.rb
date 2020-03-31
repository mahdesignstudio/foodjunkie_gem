class Foodjunkie 
    attr_accessor :strMeal, :strCategory, :strArea, :strInstructions 
    
    @@all = []
    
    def initialize(attr_hash)
      update(attr_hash)
      @@all.push(self)
    end 
    
    
    
    # def save 
    #   @@all << self 
    # end 
    
    def self.all 
      @@all
    end 

    def update(attr_hash)
      attr_hash.each do |k, v|
        self.send("#{k}=", v) if self.respond_to?("#{k}=")
      end
    end 
    
    def self.find_by_name(name)
      self.all.select do |cuisine_type|
        cuisine_type.name == name
      end 
   end      
end 