import sqlite3 from 'sqlite3';

sqlite3.verbose();
const db = new sqlite3.Database(`${__dirname}/database.db`);

const api = {};

api.getAsync = (sql, args) => {
    return new Promise((resolve, reject) => {
        db.get(sql, args, (err, row) => {
            if (err) return reject(err);
            resolve(row);
        });
    });
};

export default api;
