const pool = require('../utils/db')
const format = require('date-fns/format')
const fromUnixTime = require('date-fns/fromUnixTime')

const getData = async () => {
    let rows
    let noData = false
    try {
        conn = await pool.getConnection()
        rows = await conn.query('SELECT * FROM content_queue ORDER BY unix_time DESC')
    }
    catch (err) {
        console.error(err)
        noData = true
    }
    finally {
        if (conn) {
            console.log('ending db conn...')
            await conn.end()
        }
        if(noData){
            return false

        }
        //return all the data and add the time/date from the unix time -- 
        //modify the social media string to be an array
        return rows.map(elem => {
            const dateFromUnixTime = fromUnixTime(elem.unix_time)
            elem.time = format(dateFromUnixTime, "h:mm a")
            elem.date = format(dateFromUnixTime, "MMMM do, y")
            elem.social_media = elem.social_media.length ?  elem.social_media.split("|") : []
            return elem
        })
    }
}

module.exports = getData