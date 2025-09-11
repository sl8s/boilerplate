import express, { Request, Response } from "express";
import { ExceptionAdapter, ShareProxy } from "smvp_typescript";
import EnumExampleRouter from "./enum_example_router";

const router = express.Router();

function getViewState(exceptionAdapter: ExceptionAdapter): EnumExampleRouter {
    if(exceptionAdapter.hasException()) {
        return EnumExampleRouter.exception;
    }
    return EnumExampleRouter.success;
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
        case EnumExampleRouter.exception:
            res.status(504).json({
                "key" : exceptionAdapter.getKey()
            });
            dispose(shareProxy);
            break;
        case EnumExampleRouter.success: 
            res.status(200).json({
                "timestamp" : new Date().toLocaleString(),
                "message" : "Success"
            });
            dispose(shareProxy);
            break;   
    }
}

function exampleRouter(req: Request, res: Response): void {
    const shareProxy = new ShareProxy();
    build(req, res, shareProxy, new ExceptionAdapter(null));
}

router.get("/example", exampleRouter);

export default router;

