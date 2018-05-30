def consolidate_cart(cart)
  new_hash = Hash.new{|hsh,key| hsh[key] = {:count => 0}}
  
  cart.collect do |hash_chunk|
    hash_chunk.collect do |vegetable, price_stuff|
      price_stuff.collect do |k, v|
        
      new_hash[vegetable].store(k, v)
     

    end
    new_hash[vegetable][:count] += 1
    end
  end
  new_hash
end

def apply_coupons(cart, coupons)
 
end

def apply_clearance(cart)
  
end

def checkout(cart, coupons)
  # code here
end
