const express=require('express')
const app=express()
const bodyParser=require('express')
const pool=require('./config/config')

app.use(bodyParser.urlencoded({ extended:false}))
app.use(bodyParser.json())

app.route('/api/students').post((request,response)=>{
    let{name}=request.body

    pool.query('Insert into students (surname) values (?)',
    [name],(err,res)=>
    {
        console.log(err);
        res.send(res);
     })
})

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