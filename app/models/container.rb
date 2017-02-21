require 'material_service_client'

class Container

	def self.create_container(data)
	  	MaterialServiceClient::Container.post(data)
	end

	private

	def self.get_uuid(obj)
		obj["_id"]
	end

end