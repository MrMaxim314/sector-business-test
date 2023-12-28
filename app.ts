import express from 'express';
import dotenv from 'dotenv';
import userRouter from './routes/userRoutes';
import profileRouter from './routes/profileRoutes';
import profilesRouter from './routes/profilesRoutes';

dotenv.config();

const app = express();

app.use(express.json());
app.use(express.static('uploads'));
app.use('/user', userRouter);
app.use('/profile', profileRouter);
app.use('/profiles', profilesRouter);

app.get('/ping', (req, res) => res.json({ test: 'Ok' }));

app.listen(3000, () => console.log('Server is running'));
