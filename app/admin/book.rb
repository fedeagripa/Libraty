ActiveAdmin.register Book do

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
sidebar "Book requests", only: [:show, :edit] do
    ul do
      li link_to "Aprove", admin_book_booking_path(Booking)
    end
  end
permit_params :title, :year, :isbn, :author_id

end
