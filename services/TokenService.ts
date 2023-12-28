import jwt from 'jsonwebtoken';

export class TokenService {
  generateToken(email: string) {
    const payload = {
      email,
    };

    return jwt.sign(payload, process.env.JWT_TOKEN as string, {
      expiresIn: '1h',
    });
  }
}
