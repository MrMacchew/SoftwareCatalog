class App < ActiveRecord::Base
  
  mount_uploader :icon, ImageUploader	

end
