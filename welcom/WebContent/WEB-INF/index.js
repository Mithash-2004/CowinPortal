
var socket=required('socket.io');

var app=express();
var server=app.listen(4000,function(){
	console.log('listening to request 4000');
});

app.use(express.static('public'));

var io=socket(server);

io.on('connection',function(socket){
	console.log('made socket',socket.id); 
	
	socket.on('chat',function(data){
		io.sockets.emit('chat',data);
	});
});
