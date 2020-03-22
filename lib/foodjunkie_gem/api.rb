class API 
    def fetch
        url = 'https://www.themealdb.com/api/json/v1/1/list.php?a=list' 
        response = RestClient.get(url)
        binding.pry
        cuisine_array = JSON.parse(response.body)["results"]
        cuisine_array.each do |cuisine|
        #   Foodjunkie.new(cuisine)
         end 
    end     
end 