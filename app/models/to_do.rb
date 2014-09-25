class ToDo < ActiveRecord::Base
  include Crichton::Representor::State
  represents :todo

  before_create :set_uuid

  private
  def set_uuid
    self.uuid = SecureRandom.uuid
  end
end
