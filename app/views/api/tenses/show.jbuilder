json.tense do
  json.id @tense.id
  json.mood @tense.mood

  json.verb_id @tense.verb ? @tense.verb.id : nil
end
