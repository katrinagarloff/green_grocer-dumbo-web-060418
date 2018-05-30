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
  new_hash = Hash.new{|hsh, key| hsh[key] = {:count => 0} }
  #coupons.each do |hash_chunk|
   # hash_chunk.each do |k,v|
      
      
  cart.each do |vegetable, chunk|
    #if v.to_s == vegetable.to_s
     #if new_hash[vegetable][:count]
      
      # new_hash["#{vegetable} W/COUPON"][:count] = new_hash[vegetable][:count]
      # new_hash[vegetable][:count] -= hash_chunk[:num]
       
     #else
       new_hash[vegetable].store(:price, cart[vegetable][:price]) 
       new_hash[vegetable].store(:clearance, cart[vegetable][:clearance]) 
       new_hash[vegetable].store(:count, cart[vegetable][:count] -= hash_chunk[:num])
      
      # new_hash.store("#{vegetable} W/COUPON", {:price => hash_chunk[:cost], :clearance => true, :count => cart[vegetable][:count]})
      
     #end
      
    #end
    
  #end
  
end
puts new_hash
end
   
    
    
end

apply_coupons({
  "AVOCADO" => {:price => 3.0, :clearance => true, :count => 6},
  "KALE"    => {:price => 3.0, :clearance => false, :count => 1}
}, 	[
		{:item => "AVOCADO", :num => 2, :cost => 5.00},
		{:item => "KALE", :num => 2, :cost => 20.00},
		{:item => "CHEESE", :num => 3, :cost => 15.00}
	])



def apply_clearance(cart)
  
end

def checkout(cart, coupons)
  # code here
end
