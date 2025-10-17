import cors from "cors";
import express, { Application } from "express";
import dotenv from "dotenv";
import path from "path";
import { Server } from "http";
import { shutdown, launch } from "./utilities/server_methods";
import exampleRouter from "./routers/example_router";
import healthRouter from "./routers/health_router";
import homeRouter from "./routers/home_router";
import readyRouter from "./routers/ready_router";
import submitRouter from "./routers/submit_router";

dotenv.config({ path: path.resolve(process.cwd(), "..", ".env") });

const application: Application = express();
const port: number = Number(process.env.APP_PORT) || 0;

application.use(cors({
    methods: ["GET", "POST", "OPTIONS"],
    allowedHeaders: ["Content-Type", "Authorization"],
    exposedHeaders: ["Content-Length", "ETag"],
    maxAge: 86400,
}));
application.use(express.json());
application.use(express.urlencoded({ extended: true }));
application.use("/", exampleRouter);
application.use("/", healthRouter);
application.use("/", homeRouter);
application.use("/", readyRouter);
application.use("/", submitRouter);
const server: Server = application.listen(port, () => launch(port));
process.on("SIGINT", () => shutdown(server,"SIGINT"));
process.on("SIGTERM", () => shutdown(server,"SIGTERM"));