class FloorplanImage < ApplicationRecord
  belongs_to :home
  has_attached_file :floorplan_image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :floorplan_image, content_type: /\Aimage\/.*\Z/

end
