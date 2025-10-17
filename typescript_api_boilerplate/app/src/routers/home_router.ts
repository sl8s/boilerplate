import express, { Request, Response } from "express";
import { ShareProxy } from "smvp_typescript";

const router = express.Router();

function dispose(shareProxy: ShareProxy): void {
    shareProxy.deleteListenersByListenerId([]);
}

function homeRouter(_req: Request, res: Response): void {
    const shareProxy = new ShareProxy();
    res.status(200).json({
        "timestamp" : new Date().toLocaleString(),
        "message" : "v0.0.1"
    });
    dispose(shareProxy);
}

router.get("/", homeRouter);

export default router;