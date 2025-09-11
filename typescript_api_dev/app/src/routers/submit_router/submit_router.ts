import express, { Request, Response } from "express";
import { ExceptionAdapter, ShareProxy } from "smvp_typescript";
import EnumSubmitRouter from "./enum_submit_router";
import simpleMiddleware from "../../middlewares/simple_middleware/simple_middleware";

const router = express.Router();

function getViewState(exceptionAdapter: ExceptionAdapter): EnumSubmitRouter {
    if(exceptionAdapter.hasException()) {
        return EnumSubmitRouter.exception;
    }
    return EnumSubmitRouter.success;
}

function dispose(shareProxy: ShareProxy): void {
    shareProxy.deleteListenersByListenerId([]);
}

function build(
    req: Request,
    res: Response,
    shareProxy: ShareProxy,
    exceptionAdapter: ExceptionAdapter): void 
{
    switch(getViewState(exceptionAdapter)) {
        case EnumSubmitRouter.exception:
            res.status(504).json({
                "key" : exceptionAdapter.getKey()
            });
            dispose(shareProxy);
            break;
        case EnumSubmitRouter.success: 
            res.status(200).json({
                "timestamp" : new Date().toLocaleString(),
                "message" : "Form submitted with data: " + req.body["qwerty"],
                "middlewareMessage": res.locals.test
            });
            dispose(shareProxy);
            break;   
    }
}

function submitRouter(req: Request, res: Response): void {
    const shareProxy = new ShareProxy();
    build(req, res, shareProxy, new ExceptionAdapter(null));
}

router.post("/submit", simpleMiddleware, submitRouter);

export default router;

