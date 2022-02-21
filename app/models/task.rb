class Task < ApplicationRecord
  belongs_to :user
  
  validates :task_name, :presence => { :message => 'タイトルを入力してください' }
  validates :task_body, :presence => { :message => '本文を入力してください' }
end
