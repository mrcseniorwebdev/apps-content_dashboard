const pool = require('../utils/db')
// const format = require('date-fns/format')
const { formatInTimeZone } = require('date-fns-tz')
const subDays = require('date-fns/subDays')

const fromUnixTime = require('date-fns/fromUnixTime')
const getUnixTime = require('date-fns/getUnixTime')

const getData = async () => {
    let rows
    let noData = false
    try {
        //generate unix time date 3 days prior from this point
        //then delete anything in the queue that is less than that
        const threeDaysAgo = subDays(new Date(), 3)
        const threeDaysAgoUnixTime = getUnixTime(threeDaysAgo)

        conn = await pool.getConnection()
        rows = await conn.query('DELETE FROM content_queue WHERE unix_time < ?', [threeDaysAgoUnixTime])
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
        if (noData) {
            return false

        }
        //return all the data and add the time/date from the unix time -- 
        //modify the social media string to be an array
        return rows.map(elem => {
            const dateFromUnixTime = fromUnixTime(elem.unix_time)
            elem.time = formatInTimeZone(dateFromUnixTime, 'America/New_York', "h:mm a")
            elem.date = formatInTimeZone(dateFromUnixTime, 'America/New_York', "MMMM do, y")
            elem.social_media = elem.social_media.length ? elem.social_media.split("|") : []
            return elem
        })
    }
}

module.exports = getData