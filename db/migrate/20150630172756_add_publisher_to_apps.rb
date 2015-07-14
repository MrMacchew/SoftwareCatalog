class AddPublisherToApps < ActiveRecord::Migration
  def change
    add_column :apps, :publisher, :string
  end
end
