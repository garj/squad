class Player < ActiveRecord::Base
  searchkick autocomplete: ['name']
    
  belongs_to :squad
end
