import cors from "cors";
import express, { Application } from "express";
import dotenv from "dotenv";
import { debugPrint } from "smvp_typescript";

dotenv.config({ path: "../.env" });

const application: Application = express();
const port: number = parseInt(process.env.APP_PORT ?? "0");

application.use(cors());
application.use(express.json());
application.use(express.urlencoded({ extended: true }));
// application.use("/", routersTypeGet);
// application.use("/", routersTypePost);
application.listen(port, () => {
    debugPrint(`Server running on: ${port}`);
});