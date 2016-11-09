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
form(:html => { :multipart => true }) do |f|
  f.inputs "Book Details" do
      f.input :title
      f.input :year
      f.input :isbn
      f.input :image, :as => :file
      f.actions
    end
end
permit_params :title, :year, :isbn, :author_id, :image

end
