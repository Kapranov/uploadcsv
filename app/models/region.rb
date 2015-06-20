class Region < ActiveRecord::Base
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true, col_sep: ";") do |row|
      region_hash = row.to_hash
      region = Region.where(stat: region_hash["stat"])

      if region.count == 1
        region.first.update_attributes(region_hash.except("iso"))
      else
        Region.create!(region_hash)
      end
    end
  end
end
