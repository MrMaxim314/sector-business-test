import express from 'express';
import dotenv from 'dotenv';

dotenv.config();

const app = express();

app.get('/ping', (req, res) => res.send('Ok'));

app.listen(3000, () => console.log('Server is running'));
