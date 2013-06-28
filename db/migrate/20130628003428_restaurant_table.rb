class RestaurantTable < ActiveRecord::Migration
  def change
  	t.string "name"
  	t.text "description"
  	t.string "street"
  	t.integer "streetnumber"
  	t.string "city"
  	t.integer "zipcode"
  	t.string "state", :limit => 2
  	t.string "country"
  	t.integer "phonenumber"


  end

end
