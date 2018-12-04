class CreateLandmarks < ActiveRecord::Migration
  def change
    create_table :landmarks do |t|
      t.string :name
      t.integer :figure_id
      t.integer :year_completed
    end 
  end
end


# landmarks need a name figure_id and a year_completed column

# figures need a name

# titles need a name
