import express from 'express';
import UserService from '../services/UserService';

const userRouter = express.Router();

userRouter.post('/register', UserService.createUser);
userRouter.post('/login', UserService.loginUser);

export default userRouter;
