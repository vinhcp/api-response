module ResponseTemplate
  def self.template(code, metadata, data={})
    response = { code: code, metadata: metadata, data: data }

    Rails.logger.info Time.zone
    Rails.logger.info response

    response
  end

  def self.success(metadata, data = {})
    template(200, metadata, data)
  end

  def self.create_success(metadata, data = {})
    template(201, metadata, data)
  end

  def self.error_credential(metadata, data = {})
    template(401, metadata, data)
  end

  def self.error_not_found(metadata, data = {})
    template(404, metadata, data)
  end

  def self.error(metadata, data = {})
    template(500, metadata, data)
  end
end