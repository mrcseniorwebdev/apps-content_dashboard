const { createServer } = require("http"); // you can use https as well
const socketIo = require("socket.io");
const express = require('express')
const app = express()

require('express-async-errors')

const server = createServer(app);
const io = socketIo(server, { cors: { origin: "*" }, path: '/contentdashboard/socketio' }); // you can change the cors to your own domain


const postRouter = require('./controllers/post')
const userRouter = require('./controllers/users')

const cors = require('cors')
const morgan = require('morgan')

const getData = require('./utils/get_content')

app.use(cors())


app.use(express.json())
app.use(morgan((tokens, req, res) => {
    return [
        tokens.method(req, res),
        tokens.url(req, res),
        tokens.status(req, res),
        tokens.res(req, res, 'content-length'), '-',
        tokens['response-time'](req, res), 'ms',
        req.method === 'POST' ? JSON.stringify(req.body) : ''
    ].join(' ')
}))

app.use((req, res, next) => {
    req.io = io;
    return next();
})

app.use('/contentdashboard/api/post', postRouter)
app.use('/contentdashboard/api/user', userRouter)



const unknownEndpoint = (request, response) => {
    response.status(404).send({ error: 'unknown endpoint' })
}



app.use(unknownEndpoint)

const errorHandler = (error, request, response, next) => {
    console.error(error.message)
    if (error.name === 'SyntaxError') {
        return response.status(400).send({ error: 'malformed request' })
    }


    next(error)
}

app.use(errorHandler)



io.on('connection', async (socket) => {
    console.log('a user connected');
    const data = await getData()
    io.emit('update_items', data)
});



const PORT = process.env.PORT || 3001


// app.listen(PORT, () => {
//     console.log(`Server running on port ${PORT}`)
// })




server.listen(PORT, '0.0.0.0', () => console.log(`Server running on port ${PORT}`));
