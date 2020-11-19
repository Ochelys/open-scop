class Partner < ActiveRecord::Base
    belongs_to :company
    has_many :share_movement
    
    def shares?
        ShareMovement.where(partner_id: self.id).sum(:quantity)
    end

    def percent
      ShareMovement.where(partner_id: self.id).sum(:quantity)*100/ Company.find(self.company_id).shares?
    end
end
