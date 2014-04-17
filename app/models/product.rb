class Product < ActiveRecord::Base
  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

<<<<<<< HEAD
  has_attached_file :avatar
=======
  has_attached_file :avatar#, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
>>>>>>> 3c79dfbe38749f0b9f91ef8cf0bb961c074d2926
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  private

    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items present')
        return false
      end
    end
end
