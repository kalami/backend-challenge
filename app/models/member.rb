class Member < ApplicationRecord
  has_many :friendship_initiations, class_name: "Friendship", foreign_key: :initiator_id
  has_many :friendship_receipts, class_name: "Friendship", foreign_key: :recipient_id
  has_many :friendship_initiators, through: :friendship_initiations, class_name: "Member"
  has_many :friendship_recipients, through: :friendship_receipts, class_name: "Member"
end

