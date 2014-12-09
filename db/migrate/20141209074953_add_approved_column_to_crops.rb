class AddApprovedColumnToCrops < ActiveRecord::Migration
  def change
    add_column :crops, :approved, :boolean, default: true
  end
end
