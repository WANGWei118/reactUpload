console.log("Hello World");

//引用模块，这里请求了http的模块，变量名字叫http
var http = require("http");

//创建服务器
//request
//reponse: 回应，200： http的状态值，200 ok， 内容类型的text/plain
http.createServer(function (request, response) {
  response.writeHead(200, {'Content-Type': 'text/plain'})
  response.end('Hello world\n');
}).listen(8888);
//监听8888端口

console.log('Server running at http://127.0.0.1:8888/');