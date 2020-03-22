class FoodjunkieGem::CLI 

  def call 
    puts "Welcome User"
    puts "To see FoodJunkie, enter 'hungry'"
    puts "To exit, enter 'goodbye'" #when user exits, prompt 'don't leave hungry!'
    #API.fetch
    menu
  end 
  
  # FoodJunkie.all => 24 cuisine types 
  
  def menu
      input = gets.strip.downcase
      
    if input == "hungry"
       cuisine_list
       menu # return 'menu' don't want my user to get kicked out of application  
    elsif input == "goodbye"
      goodbye
    else 
      invalid_entry
    end 
  end
  
    def cuisine_list # method for when user enters 'hungry' 
        Foodjunkie.all.each_with_index do |cuisine, index|
            puts "#(index + 1). #{cuisine.name}"
        end 
        puts ""
        puts ""
        puts "Which Cuisine type would you like to try today? "
         input = gets.strip.downcase
        
        cuisine_selection(input) 
    end 
    
    def cuisine_selection(cuisine)
        puts "#{cuisine}"
        # go over my cuisine array, find method to find the cuisine type
      
        
        
    end 
    
    def goodbye 
       puts "Don't leave hungry!"
    end 
  
    def invalid_entry
      puts "Invalid entry, please try again"
      menu
    end 
end 