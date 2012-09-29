class AddAttachmentResumeToSeekers < ActiveRecord::Migration
  def self.up
    change_table :seekers do |t|
      t.has_attached_file :resume
    end
  end

  def self.down
    drop_attached_file :seekers, :resume
  end
end