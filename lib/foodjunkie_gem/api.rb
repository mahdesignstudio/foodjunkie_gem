class API 
     attr_accessor :strArea    


    def self.get_cuisines
        cuisines_response = HTTParty.get('https://www.themealdb.com/api/json/v1/1/list.php?a=list')
        #binding.pry
        #cuisine_array = JSON.parse(response.body)["results"]
        #cuisine_array.each do |cuisine|
        #   Foodjunkie.new(cuisine)
        #response['meals'].map(&:values).flatten
        @@all_cuisines = cuisines_response['meals'].map {|hash| hash['strArea']}
    end 

    def self.all_cuisines
        @@all_cuisines
    end 

    def self.get_cuisine_meals
        meals_response = HTTParty.get('https://www.themealdb.com/api/json/v1/1/filter.php?a=Canadian')
        
        binding.pry
    end
end     
