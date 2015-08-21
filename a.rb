class Car
      def initialize(regno, color)
            @regno = regno
            @color = color

             @@car_props = {
            @regno => @color

      }
      end

     
end

class ParkingLot < Car
      def initialize
      @no_of_slots=0
      @slots=Array.new
      end
      

 

      def create n

            @no_of_slots=n
            puts "parking for #{@no_of_slots} created"
             @no_of_slots.times do |i|
                  @slots[i]="nil"  
                  puts "#{@slots[i]}"                               

            end

      end

 

      def status

            @slots.each_with_index do |slot,index|
             if slot == nil then
                  return index
            else
                 puts "#{@@car_props.keys.first},#{@@car_props.values.first}"
            
            end            
            end 

      end

end 


 

pl = ParkingLot.new
pl.create 6
car = Car.new("ka05","gggg")
pl.status
