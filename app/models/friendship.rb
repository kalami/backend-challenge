class Friendship < ApplicationRecord
  belongs_to :friendship_initiator, class_name: "Member", foreign_key: :initiator_id
  belongs_to :friendship_recipient, class_name: "Member", foreign_key: :recipient_id

  scope :by_member_id, lambda { |id| where(initiator_id: id).or Friendship.where(recipient_id: id) }
end
