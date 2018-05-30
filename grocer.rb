require "pry"
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
  coup_veg = ""
  coupons.each do |hash_chunk|
    hash_chunk.each do |k,v|
       
      puts v
      binding.pry
  cart.each do |vegetable, chunk|
    if k.to_s == vegetable.to_s
      
      cart[vegetable][:count] -= coupons[:num]
      coup_veg = vegetable
      
    end
  end
   cart["#{coup_veg} W/COUPON"] ={:price => coupons[:cost], :clearance => true, :count => cart[coup_veg][:count]}
end
end
   
    
    puts cart
end

apply_coupons({
  "AVOCADO" => {:price => 3.0, :clearance => true, :count => 3},
  "KALE"    => {:price => 3.0, :clearance => false, :count => 1}
}, 	[
		{:item => "AVOCADO", :num => 2, :cost => 5.00},
		{:item => "BEER", :num => 2, :cost => 20.00},
		{:item => "CHEESE", :num => 3, :cost => 15.00}
	])



def apply_clearance(cart)
  
end

def checkout(cart, coupons)
  # code here
end
