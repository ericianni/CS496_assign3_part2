class Verb
  include Mongoid::Document

  embeds_many :tenses, class_name: "Tense"
  
  before_save {self.first = first.downcase }
  before_save {self.second = second.downcase }
  before_save {self.third = third.downcase }
  before_save {self.fourth = fourth.downcase }
  
  
  validates :first, presence: true, length: { maximum: 50 }, uniqueness: true
  validates :second, presence: true, length: { maximum: 50 }
  validates :third, presence: true, length: { maximum: 50 }
  validates :fourth, presence: true, length: { maximum: 50 }

  field :first, type: String
  field :second, type: String
  field :third, type: String
  field :fourth, type: String

  index({ first: 1 })
end
