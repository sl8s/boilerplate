## Project Structure

- {Link: Path to a directory or file} - {Status: Refactoring/Inheritance}
- [./app/src/middlewares/](./app/src/middlewares/) - Refactoring
- [./app/src/models/](./app/src/models/) - Inheritance
- [./app/src/routers/](./app/src/routers/) - Refactoring
- [./app/src/services/](./app/src/services/) - Inheritance
- [./app/src/utilities/algorithms.ts](./app/src/utilities/algorithms.ts) - Refactoring
- [./app/src/utilities/global.d.ts](./app/src/utilities/global.d.ts) - Refactoring
- [./app/src/utilities/server_methods.ts](./app/src/utilities/server_methods.ts) - Refactoring
- [./app/src/app.ts](./app/src/app.ts) - Refactoring

## Docker

- Here are the docker commands for .dev and .prod

### Dev

- docker-compose -f docker-compose.dev.yml up --build
- docker-compose -f docker-compose.dev.yml down

### Prod

- docker-compose -f docker-compose.prod.yml up --build
- docker-compose -f docker-compose.prod.yml down