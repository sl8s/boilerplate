import { NextFunction, Request, Response } from "express";
import { ShareProxy } from "smvp_typescript";

function dispose(shareProxy: ShareProxy): void {
    shareProxy.deleteListenersByListenerId([]);
}

function simpleMiddleware(_req: Request, res: Response, next: NextFunction): void {
    const shareProxy = new ShareProxy();
    res.locals.test = "hello test";
    next();
    dispose(shareProxy);;
}

export default simpleMiddleware;