import express, { Request, Response } from "express";
import EnumHomeRouter from "./enum_home_router";
import { ExceptionAdapter, ShareProxy } from "smvp_typescript";

const router = express.Router();

function getViewState(exceptionAdapter: ExceptionAdapter): EnumHomeRouter {
    if(exceptionAdapter.hasException()) {
        return EnumHomeRouter.exception;
    }
    return EnumHomeRouter.success;
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
        case EnumHomeRouter.exception:
            res.status(504).json(exceptionAdapter.getKey());
            dispose(shareProxy);
            break;
        case EnumHomeRouter.success: 
            res.status(200).json({
                timestamp : new Date().toLocaleString(),
                message : "v0.0.1"
            });
            dispose(shareProxy);
            break;   
    }
}

function home(req: Request, res: Response): void {
    const shareProxy = new ShareProxy();
    build(req, res, shareProxy, new ExceptionAdapter(null));
}

router.get("/", home);

export default router;

