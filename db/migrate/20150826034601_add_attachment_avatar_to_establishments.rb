class AddAttachmentAvatarToEstablishments < ActiveRecord::Migration
  def self.up
    change_table :establishments do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :establishments, :avatar
  end
end
