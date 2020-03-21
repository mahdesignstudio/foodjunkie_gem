class FoodjunkieGem::CLI 
  #need instances/objs of the class 2 call the method 
  def call 
    puts "Welcome User"
    puts "To see FoodJunkie, enter 'hungry'"
    puts "To exit, enter 'goodbye'" #when user exits, prompt 'don't leave hungry!'
    API.get_data
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
        FoodJunkie.all.each_with_index do |cuisine_type, index|
            puts "#(index + 1). #{cuisine_type.name}"
        end 
        puts ""
        puts ""
        puts "Which Cuisine type would you like to try today? "
         input = gets.strip.downcase
        
        cuisine_selection(input) 
    end 
    
    def cuisine_selection(cuisine_type)
        puts "#{cuisine_type}"
        # go over my cuisine_type array, find method to find the cuisine_type
      
        
        
    end 
    
    def goodbye 
       puts "Don't leave hungry!"
    end 
  
    def invalid_entry
      puts "Invalid entry, please try again"
      menu
    end 
end 