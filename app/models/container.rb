require 'material_service_client'

class Container

	def self.create_container(data)
		response = MaterialServiceClient::Container.post(data)
		response["_id"]
	end

end