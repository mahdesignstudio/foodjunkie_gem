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
       area_list
       menu # return 'menu' don't want my user to get kicked out of application  
    elsif input == "goodbye"
      goodbye
    else 
      invalid_entry
    end 
  end
  
    def area_list # method for when user enters 'hungry' 
        puts "1. Area 1" #Attributes will go here 
        puts "2. Area 2"
        puts "3. Area 3"
    end 
    
    def goodbye 
       puts "Don't leave hungry!"
    end 
  
    def invalid_entry
      puts "Invalid entry, please try again"
      menu
    end 
end 