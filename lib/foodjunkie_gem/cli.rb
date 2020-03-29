class FoodjunkieGem::CLI 

  def call 
    puts "Welcome User"
    sleep(2)
    puts "To see FoodJunkie, enter 'hungry'"
    sleep(2)
    puts "To exit, enter 'goodbye'" #when user exits, prompt 'don't leave hungry!'
    sleep(2)
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
        # Foodjunkie.all.each_with_index do |cuisine, index|
        #     puts "#(index + 1). #{cuisine.name}"
        # end 
        # puts ""
        # puts ""
        puts "Which Cuisine type would you like to try today? "
        sleep(2)
        puts ""
        puts "Please select a number from the list below to find meals in this Cuisine type!"
        sleep(2)
        puts ""
        #  input = gets.strip.downcase
        
        # cuisine_selection(input) 
        API.get_cuisines
        self.display_cuisines
    end 
    
    def display_cuisines
        API.all_cuisines.each.with_index(1) do |cuisine, idx|
          #binding.pry
        puts "#{idx}.#{cuisine}"
        end   
    end 
    
    def goodbye 
       puts "Don't leave hungry!"
    end 
  
    def invalid_entry
      puts "Invalid entry, please try again"
      menu
    end 
end 