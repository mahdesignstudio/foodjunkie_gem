class FoodjunkieGem::CLI 
  #need instances/objs of the class 2 call the method 
  def call 
    puts "Welcome User"
    puts "To see FoodJunkie, enter 'let's make a meal'"
    puts "To exit, enter 'goodbye'" #when user exits, prompt 'don't leave hungry!'
  end 
  
  def area
      input = gets.strip.downcase
      
      if input == "list"
        puts "list"
    else 
  end
end 