const mongoose = require('mongoose'),
  Schema = mongoose.Schema

const ReponseSchema = new Schema({
  reponse: {type: String, required: true},
  answer: {type: String, required:true}
});

const BonneReponse = new Schema({
  nbReponse: {type: String, required:true},
  anser: {type: String, required:true}
});

const QuestionSchema = new Schema({
  idQuestion: {type: Number, required: true},
  thème: {type: String, required:true},
  description: {type: String, required:true},
  reponses: [ReponseSchema],
  bonneRéponse: [BonneReponse],
  interests: {type:Number, required:true},
  notInterests: {type: Number, required:true}
});

module.exports = mongoose.model('Question', QuestionSchema);