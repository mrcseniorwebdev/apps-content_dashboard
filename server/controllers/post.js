const postRouter = require('express').Router()
const pool = require('../utils/db')
const getData = require('../utils/get_content')

/*
 * return all
 */
postRouter.get('/', async (req, res) => {
    // console.log(req.io)
    const data = await getData()

    res.json(data).send()
})
postRouter.post('/', async (req, res) => {
    // console.log(req.io)
    console.log('posty')
    const body = req.body
    console.log(body)

    //create the new ad using the Ads Schema
    let conn
    // let resp
    try {
        conn = await pool.getConnection()
        const rows = await conn.query('SELECT id FROM content_queue WHERE section = ? AND nid = ?',
            [
                body.section,
                body.nid,
            ]
        )
        console.log(rows.length)
        if (rows.length) {
            const update = await conn.query('UPDATE content_queue SET severity=? WHERE section = ? AND nid = ?',
                [
                    body.severity,
                    body.section,
                    body.nid,
                ]
            )
            console.log(`updated ${body.section} | ${body.nid}`)
        }
        else {
            const insert = await conn.query('INSERT INTO content_queue (section, nid, title, link, author, unix_time, severity, social_media) VALUES (?, ?, ?, ?, ?, ?, ?, ?)',
                [
                    body.section,
                    body.nid,
                    body.title,
                    body.link,
                    body.author,
                    body.unix_time,
                    body.severity,
                    ''
                ]
            )
            console.log(`inserted ${body.section} | ${body.nid}`)
        }
    }
    catch (err) {
        console.error(err)
        sendErr = err
    }
    finally {
        if (conn) {
            console.log('ending db conn...')
            await conn.end()
        }
    }

    const data = await getData()
    req.io.emit('update_items', data)

    res.send()

})
postRouter.patch('/', async (req, res) => {
    // console.log(req.io)
    console.log('patchy')
    const body = req.body
    console.log(body)

    //create the new ad using the Ads Schema
    let conn
    // let resp
    try {
        conn = await pool.getConnection()
        const rows = await conn.query('SELECT id FROM content_queue WHERE section = ? AND nid = ?',
            [
                body.section,
                body.nid,
            ]
        )
        console.log(rows.length)
        if (rows.length) {
            const update = await conn.query('UPDATE content_queue SET social_media=? WHERE section = ? AND nid = ?',
                [
                    body.social_media.join('|'),
                    body.section,
                    body.nid,
                ]
            )
            console.log(`updated social media string: ${body.section} | ${body.nid}`)
        }        
    }
    catch (err) {
        console.error(err)
        sendErr = err
    }
    finally {
        if (conn) {
            console.log('ending db conn...')
            await conn.end()
        }
    }

    const data = await getData()
    req.io.emit('update_items', data)

    res.send()

})
postRouter.delete('/', async (req, res) => {
    // console.log(req.io)
    console.log('delety')
    const body = req.body
    console.log(body)

    //create the new ad using the Ads Schema
    let conn
    // let resp
    try {
        conn = await pool.getConnection()
        const rows = await conn.query('DELETE FROM content_queue WHERE section = ? AND nid = ?',
            [
                body.section,
                body.nid,
            ]
        )
        console.log(`deleted ${body.section} | ${body.nid}`)
    }
    catch (err) {
        console.error(err)
        sendErr = err
    }
    finally {
        if (conn) {
            console.log('ending db conn...')
            await conn.end()
        }
    }

    const data = await getData()
    req.io.emit('update_items', data)
    res.send()

})



module.exports = postRouter
