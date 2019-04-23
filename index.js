const express=require('express')
const app=express()
const pool=require('./config/config')

app.route('/').get((request,response) => {response.send('Hi')})

app.route('/api/t/:group').get((request,response) => {
    let ngroup=request.params['group']
    response.send(`Hi ${ngroup}`)})

app.route('/api/students').get((request,response)=>{
pool.query('Select * from students', (err,result,fields)=>{
if (err) throw err
response.send(result);
})
})

app.listen(8081, ()=> {
    console.log('server started')
})