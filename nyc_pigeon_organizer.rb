require 'pry' 

def nyc_pigeon_organizer(data)
  
  final_results = data.each_with_object({}) do | (key, value), final_hash|
    #binding.pry 
    value.each do |inner_key, names|
      #binding.pry 
      names.each do |name|
        #binding.pry 
        if !final_hash[name]
          final_hash[name] = {}
          #binding.pry 
        end
        if !final_hash[name][key]
          final_hash[name][key] = []
          #binding.pry 
        end
        final_hash[name][key].push(inner_key.to_s)
      end 
    end 
   
  end 
  #binding.pry 
end
