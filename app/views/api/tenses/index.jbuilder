json.tenses @tense do |tense|
  json.id tense.id
  json.name tense.name

  json.verb_id tense.verb ? tense.verb.id : nil
end
