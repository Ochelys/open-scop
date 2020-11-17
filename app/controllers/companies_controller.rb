class CompaniesController < ApplicationController
  def index
    @company = Company.find(1)
  end

  def show
  end

  def new
  end

  def edit
  end
end
