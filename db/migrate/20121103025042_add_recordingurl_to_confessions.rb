class AddRecordingurlToConfessions < ActiveRecord::Migration
  def change
    add_column :confessions, :recording_url, :string

  end
end
