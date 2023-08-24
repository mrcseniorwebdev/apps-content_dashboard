const rolesRouter = require("express").Router();
const pool = require("../utils/db");

/*
 * return all
 */
rolesRouter.get("/", async (req, res) => {
    let roles;
    let conn;
    try {
        conn = await pool.getConnection();
        const query = `
        SELECT *
        FROM roles
        WHERE rid > 1;
		`;
        let rows = await conn.query(query, []);

        roles = rows;
    } catch (err) {
        console.error(err);
    } finally {
        if (conn) {
            console.log("ending db conn...");
            await conn.end();
        }
    }
    console.log(roles);
    roles ? res.json(roles) : res.status(400).json({ error: "get error" });
    // res.send('<h1>Herro</h1>')
});
rolesRouter.post("/", async (req, res) => {
    let conn;
    let sendErr = false;
    //grab the form data
    const body = req.body;

    const rid = Number(body.rid);
    const uid = Number(body.uid);

    if (rid && uid) {
        console.log({ body });
        try {
            conn = await pool.getConnection();
            const query = `
        INSERT INTO role_assignments (rid, uid) VALUES (?, ?)
		`;
            let resp = await conn.query(query, [rid, uid]);
            sendErr = true;
        } catch (err) {
            console.error(err);
            sendErr = false;
        } finally {
            if (conn) {
                console.log("ending db conn...");
                await conn.end();
            }
        }
    }

    sendErr
        ? res.status(200).send()
        : res.status(400).json({ error: "add roles error" });
});
rolesRouter.delete("/", async (req, res) => {
    let conn;
    let sendErr = false;
    //grab the form data
    const body = req.body;

    const rid = Number(body.rid);
    const uid = Number(body.uid);

    if (rid && uid) {
        console.log({ body });
        try {
            conn = await pool.getConnection();
            const query = `DELETE FROM role_assignments WHERE rid = ? AND uid = ?`;
            let resp = await conn.query(query, [rid, uid]);
            sendErr = true;
        } catch (err) {
            console.error(err);
            sendErr = false;
        } finally {
            if (conn) {
                console.log("ending db conn...");
                await conn.end();
            }
        }
    }

    sendErr
        ? res.status(200).send()
        : res.status(400).json({ error: "add roles error" });
});

module.exports = rolesRouter;
