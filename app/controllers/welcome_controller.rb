class WelcomeController < ApplicationController
    def index
      @share_movements = []
      @partner = Partner.find(5)
      @company = Company.find(@partner.company_id)
      @partners = Partner.all.where(company_id: @company.id)
      @partners.each do |partner|
        @share_movements += ShareMovement.all.where(partner_id: partner.id)
      end
    end
end