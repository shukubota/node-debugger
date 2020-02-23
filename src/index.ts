import * as restify from 'restify';

const respond: restify.RequestHandlerType = (req, res, next) => {
  console.log(req);
  console.log(res);
  res.send(`hello ${req.params.name}`);
  next();
};

export const server = restify.createServer({
  name: 'Restify TypeScript Echo Server',
  version: '0.1.0',
});

server.get('/hello/:name', respond);
server.head('/hello/:name', respond);

server.listen(3000, () => {
  console.log('%s listening at %s', server.name, server.url);
});
