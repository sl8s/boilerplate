import express, { Request, Response } from "express";
import { ShareProxy } from "smvp_typescript";
import simpleMiddleware from "../middlewares/simple_middleware";

const router = express.Router();

function dispose(shareProxy: ShareProxy): void {
    shareProxy.deleteListenersByListenerId([]);
}

function submitRouter(req: Request, res: Response): void {
    const shareProxy = new ShareProxy();
    res.status(200).json({
        "timestamp" : new Date().toLocaleString(),
        "message" : "Form submitted with data: " + req.body["qwerty"],
        "middlewareMessage": res.locals.test
    });
    dispose(shareProxy);
}

router.post("/submit", simpleMiddleware, submitRouter);

export default router;