class Partner < ActiveRecord::Base
    belongs_to :company
    has_many :share_movement
    
end