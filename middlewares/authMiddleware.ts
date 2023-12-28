import { Request, Response, NextFunction } from 'express';

export function authMiddleware(
  req: Request,
  res: Response,
  next: NextFunction,
) {
  if (req.method === 'OPTIONS') {
    next();
  }

  try {
    const token = req.headers.authorization?.split(' ')[1];
    if (!token) {
      res.status(401).json({ message: 'Пользователь не авторизован' });
    }

    next();
  } catch (e) {
    res.status(401).json({ message: 'Пользователь не авторизован' });
  }
}
