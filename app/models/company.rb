class Company < ActiveRecord::Base
    has_many :Partner
    validate :name
    
end
