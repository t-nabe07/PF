class Notification < ApplicationRecord

  #スコープ（新着順）
  default_scope -> { order(created_at: :desc) }

  belongs_to :production, optional: true
  belongs_to :comment, optional: true
  belongs_to :visitor, class_name: 'Customer', foreign_key: 'visitor_id', optional: true
  belongs_to :visited, class_name: 'Customer', foreign_key: 'visited_id', optional: true

end
