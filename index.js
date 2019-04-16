const express=require('express')
const app=express()

app.route('/').get((request,response) => {response.send('Hi')})

app.listen(8080, ()=> {
    console.log('server started')
})