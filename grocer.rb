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
  cart.each do |vegetable, chunk|
    puts vegetable({
  "AVOCADO" => {:price => 3.0, :clearance => true, :count => 1},
  "KALE"    => {:price => 3.0, :clearance => false, :count => 1},
  "AVOCADO W/COUPON" => {:price => 5.0, :clearance => true, :count => 1},
}, {:item => "AVOCADO", :num => 2, :cost => 5.0})
  end
end
apply_coupons
def apply_clearance(cart)
  
end

def checkout(cart, coupons)
  # code here
end
