import express from 'express';
import { authMiddleware } from '../middlewares/authMiddleware';
import UserService from '../services/UserService';
import upload from '../utils/fileUploader';

const profileRouter = express.Router();

profileRouter.get('/:id', authMiddleware, UserService.getOneUser);
profileRouter.put(
  '/:id',
  authMiddleware,
  upload.single('file'),
  UserService.updateUser,
);

export default profileRouter;
