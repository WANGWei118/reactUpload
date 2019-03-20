const animalSchema = new Schema({
  name: String, type:String
});


animalSchema.method.findSimilarType = function (cb) {
  return this.model('Animal').find({type:this.type}, cb);
};