# frozen_string_literal: true

class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.all.order(:name)
  end

  def missing_email
    @customers = Customer.where('email==""').order(:name)
  end
end
