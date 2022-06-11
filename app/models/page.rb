class Page < ApplicationRecord
  belongs_to :parent
  belongs_to :account
end
