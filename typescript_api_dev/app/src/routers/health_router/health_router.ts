import express, { Request, Response } from "express";
import { ExceptionAdapter, ShareProxy } from "smvp_typescript";
import EnumHealthRouter from "./enum_health_router";

const router = express.Router();

function getViewState(exceptionAdapter: ExceptionAdapter): EnumHealthRouter {
    if(exceptionAdapter.hasException()) {
        return EnumHealthRouter.exception;
    }
    return EnumHealthRouter.success;
}

function dispose(shareProxy: ShareProxy): void {
    shareProxy.deleteListenersByListenerId([]);
}

function build(
    _req: Request,
    res: Response,
    shareProxy: ShareProxy,
    exceptionAdapter: ExceptionAdapter): void 
{
    switch(getViewState(exceptionAdapter)) {
        case EnumHealthRouter.exception:
            res.status(504).json({
                "key" : exceptionAdapter.getKey()
            });
            dispose(shareProxy);
            break;
        case EnumHealthRouter.success: 
            res.sendStatus(200);
            dispose(shareProxy);
            break;   
    }
}

function healthRouter(req: Request, res: Response): void {
    const shareProxy = new ShareProxy();
    build(req, res, shareProxy, new ExceptionAdapter(null));
}

router.get("/health", healthRouter);

export default router;

