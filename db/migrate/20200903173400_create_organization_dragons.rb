class CreateOrganizationDragons< ActiveRecord::Migration[6.0]
  def change
    create_table :organization_dragons do |t|
      t.belongs_to :organization
      t.belongs_to :dragon
      t.timestamps
    end
  end
end
