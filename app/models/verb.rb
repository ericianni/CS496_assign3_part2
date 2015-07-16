class Verb
  include Mongoid::Document
  field :first, type: String
  field :second, type: String
  field :third, type: String
  field :fourth, type: String

  index({ first: 1 })
end
