import express from 'express';
import dotenv from 'dotenv';
import swaggerUi, { SwaggerOptions } from 'swagger-ui-express';
import swaggerJsdoc from 'swagger-jsdoc';

const options: SwaggerOptions = {
  definition: {
    info: {
      title: 'Test Task API',
    },
  },
  servers: [
    {
      url: 'http://localhost:3000/',
    },
  ],
  apis: [],
};

dotenv.config();

const app = express();

app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerJsdoc(options)));

app.get('/ping', (req, res) => res.send('Ok'));

app.listen(3000, () => console.log('Server is running'));
