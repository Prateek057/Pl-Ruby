require_relative 'Car'
require_relative 'ParkingLot'


pl = ParkingLot.new
pl.createSlots 6
car1 = Car.new("1111", "Red")
car2 = Car.new("1122", "Black")
car3 = Car.new("1133", "Blue")
car4 = Car.new("1144", "Red")
car5 = Car.new("1155", "Gold")
car6 = Car.new("1166", "Green")
car7 = Car.new("1177", "Pink")
pl.park(car1)
pl.park(car2)
pl.park(car3)
pl.park(car4)
pl.park(car5)
pl.park(car6)
pl.park(car7)
pl.leave(2)
pl.park(car7)
pl.leave(6)
pl.leave(3)
pl.status
pl.searchwithregno("1155")
pl.searchwithcolor("Red")