class Tableless
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  def persisted?
    false
  end
end
