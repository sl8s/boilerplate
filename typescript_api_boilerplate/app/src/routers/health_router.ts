import express, { Request, Response } from "express";
import { ShareProxy } from "smvp_typescript";

const router = express.Router();

function dispose(shareProxy: ShareProxy): void {
    shareProxy.deleteListenersByListenerId([]);
}

function healthRouter(_req: Request, res: Response): void {
    const shareProxy = new ShareProxy();
    res.sendStatus(200);
    dispose(shareProxy);
}

router.get("/health", healthRouter);

export default router;