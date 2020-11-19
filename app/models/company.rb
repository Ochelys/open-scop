class Company < ActiveRecord::Base
    has_many :Partner
    validate :name
    
    def shares?
        shares = 0
        @partners = Partner.where(company_id: self.id)
        @partners.each do |partner|
            shares += partner.shares?
        end
        shares
    end
end
