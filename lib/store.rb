require 'pry'
#class for Model2 goes here
#Feel free to change the name of the class
class Store

    attr_accessor :store_name, :location

    # read method/getter
    # def store_name
    #     @store_name
    # end

    # write method/setter
    # def store_name=(anything)
    #     @store_name = anything
    # end

    #class vbariable
    @@all = []

    def initialize(store_name, location)
        @store_name = store_name
        @loction = location
        # here...self refers to each instance created
        # and gets added to the class varibale @@all
        # which is an array.
        @@all << self
    end

    def self.all_stores
        @@all
    end

    def find_store
        # looping through the join and letting Store know its "us" == Sneaker
        Sneaker.all_sneakers.select do |store|
            # .store is an instance variable inside of sneaker
            store.store == self
        end
    end

=begin
    => [
        #<Sneaker:0x007f83c128da60
            @brand="Bred 11's",
            @customer=#<Customer:0x007f83c128dc18 @cust_name="Chris", @shoe_size=12>,
            @store=
            #<Store:0x007f83c128de70
                @loction="812 Broadway, New York, NY 10003",
                @store_name="Flight Club">>,
        #<Sneaker:0x007f83c128d8f8
            @brand="Jordan 1's",
            @customer=#<Customer:0x007f83c128db78 @cust_name="Greg", @shoe_size=10>,
            @store=
            #<Store:0x007f83c128de70
                @loction="812 Broadway, New York, NY 10003",
                @store_name="Flight Club">>
        ]
=end

    def store_customers
        find_store.map do |cust|
            cust.customer
        end
    end

    #> flight_club.store_customers
    #=> [#<Customer:0x007f92b4989178 @cust_name="Chris", @shoe_size=12>,
         #<Customer:0x007f92b49890b0 @cust_name="Greg", @shoe_size=10>,
         #<Customer:0x007f92b4989100 @cust_name="Woody", @shoe_size=11>,
         #<Customer:0x007f92b4988f70 @cust_name="Ty", @shoe_size=10>]

    #> extra_butter.store_customers
    #=> [#<Customer:0x007f92b4989178 @cust_name="Chris", @shoe_size=12>,
         #<Customer:0x007f92b4988fe8 @cust_name="Cristian", @shoe_size=8>]

    #> rare_pair_ny.store_customers
    #=> [#<Customer:0x007f92b4989178 @cust_name="Chris", @shoe_size=12>,
         #<Customer:0x007f92b4988ef8 @cust_name="Bones", @shoe_size=12>,
         #<Customer:0x007f92b4988ea8 @cust_name="Skee", @shoe_size=10>]

    #> stadium_goods.store_customers
    #=> [#<Customer:0x007f92b4989178 @cust_name="Chris", @shoe_size=12>,
         #<Customer:0x007f92b4989100 @cust_name="Woody", @shoe_size=11>,
         #<Customer:0x007f92b4988ef8 @cust_name="Bones", @shoe_size=12>]

    #> nike_soho.store_customers
    #=> [#<Customer:0x007f92b4989178 @cust_name="Chris", @shoe_size=12>,
         #<Customer:0x007f92b49890b0 @cust_name="Greg", @shoe_size=10>,
         #<Customer:0x007f92b4989100 @cust_name="Woody", @shoe_size=11>,
         #<Customer:0x007f92b4988fe8 @cust_name="Cristian", @shoe_size=8>,
         #<Customer:0x007f92b4988f70 @cust_name="Ty", @shoe_size=10>,
         #<Customer:0x007f92b4988ea8 @cust_name="Skee", @shoe_size=10>]

    def store_brands
        find_store.map do |brand|
            brand.brand
        end
    end

    #> flight_club.store_brands
    #=> ["Bred 11's", "Jordan 1's", "Nike KD 8's", "Air Jordan 8's"]

    #> extra_butter.store_brands
    #=> ["Green Glow 4's", "Airmax 97"]

    #> rare_pair_ny.store_brands
    #=> ["Broken Bats", "Air Jordan 10's", "Beef and Broccoli Swamps"]

    #> stadium_goods.store_brands
    #=> ["Bo and Arrows", "Cement 3's", "Nike Lebron 9's"]

    #> nike_soho.store_brands
    #=> ["Nike Air Max 87's",
    #    "Ewing Wrap",
    #    "Nike Air Griffey Max I",
    #    "Air Jordan Spizike",
    #    "Nike Air More Uptempo",
    #    "Nike Air Max 90's"]
end

# def wheres_the_store
#     p "Type in a Store Name:"
#     input = gets.chomp.downcase
#
#     Store.all_stores.each_index do |store|
#         if store == input
#             "#{self.location}"
#         else
#             "Invalid Store. Please Try Again"
#         end
#     end
# end

# def wheres_the_store?
#     p "Type in a Store Name: "
#     input = gets.chomp.downcase
#
#     # while input != "exit"
#
#     Store.all_stores.select { |u| u == input  }
#             #     puts s
#             # elsif input == "exit"
#             #     # break
#             # else "Invalid Store. Please Try Again or 'exit' to quit."
#             # end
#         # end
#     # end # while loop
# end

# [5] pry(main)> flight_club.wheres_the_store.map{|x| x.customer.cust_name}
#=> ["Chris", "Greg"]

# [6] pry(main)> nike_soho.wheres_the_store.map{|x| x.customer.cust_name}
#=> []

# [7] pry(main)> stadium_goods.wheres_the_store.map{|x| x.customer.cust_name}
# => ["Woody"]
