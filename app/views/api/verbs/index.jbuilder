json.verbs @verb do |verb|
  json.id verb.id
  json.first verb.first
  json.second verb.second
  json.third verb.third
  json.fourth verb.fourth

  json.tenses verb.tenses.all do |tense|
    json.id tense.id
    json.name tense.name
    json.abbrv tense.abbrv
    json.voice tense.voice
  end
end
