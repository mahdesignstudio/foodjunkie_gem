class FoodjunkieGem::CLI 
  #need instances/objs of the class 2 call the method 
  def call 
    puts "Welcome User"
    puts "To see FoodJunkie, enter 'hungry'"
    puts "To exit, enter 'goodbye'" #when user exits, prompt 'don't leave hungry!'
    menu
  end 
  
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
        puts "1. Cuisine 1" #Attributes will go here 
        puts "2. Cuisine 2"
        puts "3. Cuisine 3"
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