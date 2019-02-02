require_relative "lib/store.rb"
require_relative "lib/sneaker.rb"
require_relative "lib/customer.rb"
require 'pry'

# Store instances
flight_club = Store.new("Flight Club", "812 Broadway, New York, NY 10003")
nike_soho = Store.new("Nike Soho", "529 Broadway, New York, NY 10012")
extra_butter = Store.new("Extra Butter", "125 Orchard St, New York, NY 10002")
stadium_goods = Store.new("Stadium Goods", "47 Howard St, New York, NY 10013")
rare_pair_ny = Store.new("Rare Pair New York", "288 Mulberry St, New York, NY 10012")

# Customer instances
chris = Customer.new("Chris", 12)
woody = Customer.new("Woody", 11)
greg = Customer.new("Greg", 10)
simon = Customer.new("Simon", 9)
cristian = Customer.new("Cristian", 8)
ty = Customer.new("Ty", 10)
bones = Customer.new("Bones", 12)
skee = Customer.new("Skee", 10)

#chris.buy_sneaker("Bred 11's", flight_club)

# Sneaker instances
Sneaker.new("Bred 11's", flight_club, chris, 500, "Black & Red")
Sneaker.new("Green Glow 4's", extra_butter, chris, 350, "grey & mint")
Sneaker.new("Broken Bats", rare_pair_ny, chris, 400, "white & sky blue")
Sneaker.new("Bo and Arrows", stadium_goods, chris, 200, "Hunter Camo")
Sneaker.new("Nike Air Max 87's", nike_soho, chris, 225, "Red & White")
Sneaker.new("Ewing Wrap", nike_soho, greg, 150, "Blue & Orange")
Sneaker.new("Jordan 1's", flight_club, greg, 225, "Black & Blue")
Sneaker.new("Cement 3's", stadium_goods, woody, 260, "Fire Engine Red & White")
Sneaker.new("Nike KD 8's", flight_club, woody, 225, "Black & White")
Sneaker.new("Nike Air Griffey Max I", nike_soho, woody, 180, "Navy & Turquoise")
Sneaker.new("Airmax 97", extra_butter, cristian, 235, "White & Navy")
Sneaker.new("Air Jordan Spizike", nike_soho, cristian, 220, "Denim & Navy")
Sneaker.new("Air Jordan 8's", flight_club, ty, 270, "Red & Black")
Sneaker.new("Nike Air More Uptempo", nike_soho, ty, 200, "Black")
Sneaker.new("Tuxedo 11's", rare_pair_ny, bones, 260, "White & Black")
Sneaker.new("Nike Lebron 9's", stadium_goods, bones, 260, "Purple & Orange")
Sneaker.new("Nike Air Max 90's", nike_soho, skee, 300, "Grey & Red")
Sneaker.new("Beef and Broccoli Swamps", rare_pair_ny, skee, 290, "Brown & Dark Green")

# bred_11s =
# green_glow_4s =
# broken_bats =
# bo_and_arrows =
# airmax_95s =
# ewing_wraps =
# jordan_1s =
# cement_3s =
# nike_kd_8s =
# nike_air_griffeys =
# airmax_97s =
# jordan_spizikes =
# bugs_bunny_8s =
# airmax_pennys =
# jordan_10s =
# nike_lebron_9s =
# airmax_90s =
# airmax_87s =

# def run
#     wheres_the_store
# end
#
# run

binding.pry
0
