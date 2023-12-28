import express from 'express';
import { authMiddleware } from '../middlewares/authMiddleware';
import UserService from '../services/UserService';

const profilesRouter = express.Router();

profilesRouter.get('/', authMiddleware, UserService.getAllUsers);

export default profilesRouter;
