import { Request, Response } from 'express';
import prisma from '../prisma/prisma';
import argon2 from 'argon2';
import { TokenService } from './TokenService';

interface IUserData {
  name: string;
  email: string;
  password: string;
}

interface IUserDataUpdate extends IUserData {
  surname: string;
  gender: 'M' | 'F';
  photo: string;
}

type UserDataLogin = Pick<IUserData, 'email' | 'password'>;

export class UserService {
  async createUser(req: Request, res: Response) {
    const { name, email, password }: IUserData = req.body;

    const user = await prisma.user.findFirst({
      where: {
        email: email,
      },
    });

    if (user) {
      res.status(400).json('Пользователь с указанным email уже существует');
      return;
    }

    const hashedPassword = await argon2.hash(password);

    const newUser = await prisma.user.create({
      data: {
        name: name,
        email: email,
        password: hashedPassword,
      },
    });

    return res.status(201).json(newUser);
  }

  async loginUser(req: Request, res: Response) {
    const { email, password }: UserDataLogin = req.body;
    const user = await prisma.user.findFirstOrThrow({
      where: {
        email: email,
      },
    });

    if (!(await argon2.verify(user.password, password))) {
      res.status(400).json('Неверный пароль');
      return;
    }

    res.status(200).json(new TokenService().generateToken(email));
  }

  async updateUser(req: Request, res: Response) {
    const { name, surname, email, password, gender }: IUserDataUpdate =
      req.body;
    try {
      const userToUpdate = await prisma.user.findFirstOrThrow({
        where: {
          id: Number(req.params.id),
        },
      });

      const user = await prisma.user.update({
        where: {
          id: Number(req.params.id),
        },
        data: {
          name: name ?? userToUpdate.name,
          surname: surname ?? userToUpdate.surname,
          email: email ?? userToUpdate.email,
          password: password ?? userToUpdate.password,
          gender: gender ?? userToUpdate.gender,
          photo: req.file ? req.file.filename : null,
        },
      });

      res.status(200).json(user);
      return;
    } catch (e) {
      res.status(500).json(e);
    }
  }

  async getOneUser(req: Request, res: Response) {
    const user = await prisma.user.findFirst({
      where: {
        id: Number(req.params.id),
      },
    });

    res.status(200).json(user);
  }

  async getAllUsers(req: Request, res: Response) {
    const { page } = req.query;

    const users = await prisma.user.findMany({
      skip: (Number(page) - 1) * 10,
      take: 10,
      orderBy: {
        created_at: 'desc',
      },
    });

    res.json(users);
  }

  async findUserByEmail(email: string) {
    return await prisma.user.findFirst({
      where: {
        email: email,
      },
    });
  }
}
export default new UserService();
