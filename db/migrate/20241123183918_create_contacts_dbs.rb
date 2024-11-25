class CreateContactsDbs < ActiveRecord::Migration[8.0]
  def change
    create_table :contacts_dbs do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :linkedin

      t.timestamps
    end
  end
end

=begin
The types supported by Active Record are
        :primary_key,
        :string,
        :text,
        :integer,
        :float,
        :decimal,
        :datetime,
        :timestamp,
        :time,
        :date,
        :binary,
        :boolean

=end
