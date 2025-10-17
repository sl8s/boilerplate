import express, { Request, Response } from "express";
import { ShareProxy } from "smvp_typescript";

const router = express.Router();

function dispose(shareProxy: ShareProxy): void {
    shareProxy.deleteListenersByListenerId([]);
}

function exampleRouter(_req: Request, res: Response): void {
    const shareProxy = new ShareProxy();
    res.status(200).json({
        "timestamp" : new Date().toLocaleString(),
        "message" : "Success"
    });
    dispose(shareProxy);
}

router.get("/example", exampleRouter);

export default router;