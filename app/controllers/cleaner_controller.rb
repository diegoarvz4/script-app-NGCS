class CleanerController < ApplicationController
  def new
  end 


  def create 
  
      @script = params[:cleaner][:script]
      @splitted = @script.split("\n")
      count = 0
      tc = ""
      @loops = Hash.new

      @splitted.each{
          |element|
          
          if count % 4 == 1 
          
              tc = "00."+element[3..4].to_s+"."+element[6..7].to_s
 
          
          elsif count % 4 == 2 
           
              eng_dialog = element 
              current = @loops[tc].to_s
              @loops[tc] = current +" "+ eng_dialog
              
          end 
      
          count+= 1 
      
      }

      @loops.each{

          |t, d|
      
      
          puts t + d
        
      
      }
      



  end 
end
