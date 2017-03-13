module MaterialSubmissionsHelper
def slots_attributes_for(plate)
  #debugger
  plate.slots.each_with_index.reduce({}) do |memo, list|
    slot,index = list[0],list[1]
    memo[index.to_s] = {
      #:id => slot.id.to_s,
      :position => slot.address,
      :biomaterial_attributes => slot.material_id.nil? ? MatconClient::Material.new : MatconClient::Material.find(slot.material_id)
    }
    memo
  end
end

def plate_attributes_for(labwares)
  mlabware = {}
  labwares.each_with_index do |plate, plate_idx|
    mlabware[plate_idx.to_s] = {
      :id => plate.id.to_s,
      :barcode => plate.barcode,
      :slots_attributes => slots_attributes_for(plate)
    }
  end
  mlabware
end


end
