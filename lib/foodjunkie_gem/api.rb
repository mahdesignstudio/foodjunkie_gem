class API 
    def self.get_data
        response = RestClient.get("https://www.themealdb.com/api/json/v1/1/list.php?a=list")
        cuisine_array = JSON.parse(response.body)["results"]
        cuisine_array.each do |cuisine|
          Foodjunkie.new(cuisine)
        end 
    end     
end 