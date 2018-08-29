class Car < ApplicationRecord

  # ----------------------------------------------------------------------
  # == Associations == #
  # ----------------------------------------------------------------------

  belongs_to :user
  has_many :services, dependent: :destroy

end
