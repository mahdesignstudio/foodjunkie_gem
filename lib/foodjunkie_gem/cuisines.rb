class FoodjunkieGem::Cuisines

    attr_accessor :strArea

    @@all = []

    def initialize(arg)
        arg.each {|key,value|self.send(("#{key}="), value)}
        @@all << self 
    end
    
    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end     
end 