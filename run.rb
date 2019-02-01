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
Sneaker.new("Bred 11's", flight_club, chris)
Sneaker.new("Green Glow 4's", extra_butter, chris)
Sneaker.new("Broken Bats", rare_pair_ny, chris)
Sneaker.new("Bo and Arrows", stadium_goods, chris)
Sneaker.new("Nike Air Max 87's", nike_soho, chris)
Sneaker.new("Ewing Wrap", nike_soho, greg)
Sneaker.new("Jordan 1's", flight_club, greg)
Sneaker.new("Cement 3's", stadium_goods, woody)
Sneaker.new("Nike KD 8's", flight_club, woody)
Sneaker.new("Nike Air Griffey Max I", nike_soho, woody)
Sneaker.new("Airmax 97", extra_butter, cristian)
Sneaker.new("Air Jordan Spizike", nike_soho, cristian)
Sneaker.new("Air Jordan 8's", flight_club, ty)
Sneaker.new("Nike Air More Uptempo", nike_soho, ty)
Sneaker.new("Air Jordan 10's", rare_pair_ny, bones)
Sneaker.new("Nike Lebron 9's", stadium_goods, bones)
Sneaker.new("Nike Air Max 90's", nike_soho, skee)
Sneaker.new("Beef and Broccoli Swamps", rare_pair_ny, skee)

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
