const express = require('express')
const { exec } = require("child_process");
const path = require('path');
const app = express()
const port = 6070
app.use(express.urlencoded({ extended: true }))
app.get("/simpan",(req, res) => {
    const { width, height } = req.query
    exec("vncserver -geometry 1366x768")
    return res.send("jos")
})
app.get("/",(req, res) => {
    return res.sendFile(path.join(__dirname+'/tampilan.html'))
})
app.listen(port, () => console.log(`Example app listening on port ${port}!`))
