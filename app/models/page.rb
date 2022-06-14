class Page < ApplicationRecord
  belongs_to :parent, class_name: "Page", optional: true
  belongs_to :account

  acts_as_list scope: :parent

  before_save :update_slug

  def to_param
    slug
  end
  

  private 
  
  def update_slug
    self.slug = title.parameterize
  end

end
