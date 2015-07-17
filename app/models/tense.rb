class Tense
  include Mongoid::Document

  embedded_in :verb, :inverse_of => :tenses

  validates :name, presence: true
  validates :abbrv, presence: true
  validates :voice, presence: true
  validates :mood, presence: true
  validates :verb_id, presence: true
  
  field :name, type: String
  field :abbrv, type: String
  field :voice, type: String
  field :mood, type: String
  field :verb_id, type: String

  index({verb_id: 1})
end
