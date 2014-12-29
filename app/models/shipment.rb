class Shipment < ActiveRecord::Base
  belongs_to :order
  #before_save :generate_slug
  
  #def to_param
   # generate_slug
 # end
  
  #def generate_slug
   # self.slug = self.order.product_name.gsub(' ', '-').downcase
  #end
  
  
  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |shipment|
        csv << shipment.attributes.values_at(*column_names)
      end
    end   
  end
end

