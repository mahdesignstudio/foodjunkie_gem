class API 
    def self.get_cuisines
        response = HTTParty.get('https://www.themealdb.com/api/json/v1/1/list.php?a=list')
        #binding.pry
        #cuisine_array = JSON.parse(response.body)["results"]
        #cuisine_array.each do |cuisine|
        #   Foodjunkie.new(cuisine)
        #response['meals'].map(&:values).flatten
        @@all_cuisines = response['meals'].map {|hash| hash['strArea']}
    end 

         def self.all_cuisines
            @@all_cuisines
         end 
    end     
