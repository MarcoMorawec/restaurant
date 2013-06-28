class Restaurant < ActiveRecord::Base
  attr_accessible :name, :description, :street, :streetnumber, :city, 
  					:zipcode, :state, :country, :phonenumber


end
