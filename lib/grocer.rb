def find_item_by_name_in_collection(name, collection)
    index = 0
    while index < collection.length
      if collection[index][:item] == name
        return collection[index]
      end
      index += 1
    end
end

def consolidate_cart(cart)
  consolidated = []

    cart.each_with_index do |item, index|
      if consolidated.include?(cart[index][:item])
         cart[index] = consolidated.merge({count: 1})
       else
         consolidated[index][:count] + 1
       end
     end
     consolidated

  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

end
