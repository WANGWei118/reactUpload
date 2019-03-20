const animalSchema = new Schema({
  name: String, type:String
});


animalSchema.method.findSimilarType = function (cb) {
  return this.model('Animal').find({type:this.type}, cb);
};


const mongoose = require('mongoose');
var Animal = mongoose.model('Animal', animalSchema);
var dog = new Animal({type: 'dog'});
console.log("here" + dog);


dog.findSimilarType(function (err, dogs) {
  console.log(dogs);
})
