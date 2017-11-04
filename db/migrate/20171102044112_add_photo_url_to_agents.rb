class AddPhotoUrlToAgents < ActiveRecord::Migration[5.1]
  def change
  	add_column :agents, :photo_url, :string
  end
end
