import 'dotenv/config';
import { Application } from 'express';
import { helloController } from './example/example.controller';
import express from 'express';
import swaggerUi from 'swagger-ui-express';
import swaggerJsdoc from 'swagger-jsdoc';

// // Definição do Swagger
// const swaggerDefinition = {
//     openapi: '3.0.0',
//     info: {
//         title: 'API de Gerenciamento de Posts',
//         version: '1.0.0',
//         description: 'API para criar, ler, atualizar e deletar posts',
//     },
//     servers: [
//         {
//             url: 'http://localhost:3000',
//             description: 'Servidor de Desenvolvimento',
//         },
//         {
//             url: 'https://managerposts.netlify.app',
//             description: 'Servidor de Produção',
//         },
//     ],
//     paths: {
//         '/api/posts': {
//             get: {
//                 summary: 'Recuperar todos os posts',
//                 responses: {
//                     '200': {
//                         description: 'Lista de todos os posts',
//                     },
//                 },
//             },
//             post: {
//                 summary: 'Criar um novo post',
//                 responses: {
//                     '200': {
//                         description: 'Post criado',
//                     },
//                 },
//             },
//         },
//         '/api/posts/{id}': {
//             get: {
//                 summary: 'Recuperar um post específico pelo ID',
//                 parameters: [
//                     {
//                         name: 'id',
//                         in: 'path',
//                         required: true,
//                         description: 'ID do post',
//                         schema: {
//                             type: 'string',
//                         },
//                     },
//                 ],
//                 responses: {
//                     '200': {
//                         description: 'Post recuperado',
//                     },
//                 },
//             },
//             put: {
//                 summary: 'Atualizar um post existente pelo ID',
//                 parameters: [
//                     {
//                         name: 'id',
//                         in: 'path',
//                         required: true,
//                         description: 'ID do post',
//                         schema: {
//                             type: 'string',
//                         },
//                     },
//                 ],
//                 responses: {
//                     '200': {
//                         description: 'Post atualizado',
//                     },
//                 },
//             },
//             delete: {
//                 summary: 'Deletar um post existente pelo ID',
//                 parameters: [
//                     {
//                         name: 'id',
//                         in: 'path',
//                         required: true,
//                         description: 'ID do post',
//                         schema: {
//                             type: 'string',
//                         },
//                     },
//                 ],
//                 responses: {
//                     '204': {
//                         description: 'Post deletado',
//                     },
//                 },
//             },
//         },
//     },
// };

// const specs = swaggerJsdoc({
//     swaggerDefinition: swaggerDefinition,
//     apis: ['./postManager/*.ts'],
// });
export const AppModule = (app: Application) => {
    app.use(express.json());

    // // Configurações do Swagger
    // app.use('/api/api-docs', swaggerUi.serve, swaggerUi.setup(specs));

    // // API de Gerenciamento de Posts
    // app.use('/api/posts', postController);

    // API de exemplo
    app.use('/api/hello', helloController);

};
