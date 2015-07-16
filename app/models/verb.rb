class Verb
  include Mongoid::Document

  validates :first, presence: true
  validates :second, presence: true
  validates :third, presence: true
  validates :fourth, presence: true

  field :first, type: String
  field :second, type: String
  field :third, type: String
  field :fourth, type: String

  index({ first: 1 })
end
