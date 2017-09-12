class AddAttachmentVideoToStudents < ActiveRecord::Migration
  def self.up
    change_table :students do |t|
      t.attachment :video
    end
  end

  def self.down
    remove_attachment :students, :video
  end
end
