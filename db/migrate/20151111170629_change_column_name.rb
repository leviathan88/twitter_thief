class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :interests, :hashtag, :hashtags
  end
end
