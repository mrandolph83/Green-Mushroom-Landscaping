class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :job_address_street
      t.string :job_address_land
      t.string :picture
      t.string :description
      t.string :services
      t.string :service_date
      t.belongs_to :employee, foreign-key: true
      t.belongs_to :customer, foreign-key: true
      t.boolean :complete

      t.timestamps
    end
  end
end
