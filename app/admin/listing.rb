ActiveAdmin.register Listing do

 permit_params :title, :private_room, :entire_home, :description, :no_of_bedrooms, :no_of_bathrooms, :no_of_beds, :max_occupancy, :city, :neighborhood, :default_price_per_night

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
