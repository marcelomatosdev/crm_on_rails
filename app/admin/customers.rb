# frozen_string_literal: true

ActiveAdmin.register Customer do
  permit_params :name, :phone, :email, :image, :notes
end
