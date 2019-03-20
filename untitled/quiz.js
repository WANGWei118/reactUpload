const mongoose = require('mongoose'),
  Schema = mongoose.Schema,
  Question = require('./question')

const QuizSchema = new Schema({
  idQuiz:  {type: Number, require: true},
  participants: {type: Number, require: true},
  salle: {type: String, require:true},
  questions: [Question.schema]
});

module.exports = mongoose.model('Quiz', QuizSchema, 'quizs');