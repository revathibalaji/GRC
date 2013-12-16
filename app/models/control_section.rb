class ControlSection < ActiveRecord::Base
  include AuthoredModel

  attr_accessible :control, :section

  belongs_to :control
  belongs_to :section

  # belongs_to :account

  is_versioned_ext
end
