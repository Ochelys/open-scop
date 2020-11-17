class WelcomeController < ApplicationController
    def index
      @partner = Partner.find(5)
      @company = Company.find(@partner.company_id)
      @partners = Partner.all.where(company_id: @company.id)
    end
end