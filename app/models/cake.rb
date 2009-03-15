class Cake < ActiveRecord::Base
    
    acts_as_taggable_on :tags
    
    validates_presence_of :name
    
end
