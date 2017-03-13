class MaterialSubmissionLabware < ApplicationRecord
  attr_accessor :labware
  belongs_to :material_submission

  before_create :labware_to_wait_for_reception

  def labware_to_wait_for_reception
    self.state='awaiting receipt'
  end

  def self.new_list(params_list)
    params_list.map do |params|
      debugger
      create({:labware_id => MatconClient::Container.create(params).id })
    end
  end

  def labware
    @labware ||= MatconClient::Container.find(labware_id)
  end

  def barcode
    labware.barcode
  end

  def labware_attributes=(attrs)
    @labware.update_attributes(attrs)
  end

end
