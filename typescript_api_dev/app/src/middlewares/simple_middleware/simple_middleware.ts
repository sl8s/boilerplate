import { Request, Response, NextFunction } from "express";
import { ExceptionAdapter, ShareProxy } from "smvp_typescript";
import EnumSimpleMiddleware from "./enum_simple_middleware";

function getViewState(exceptionAdapter: ExceptionAdapter): EnumSimpleMiddleware {
    if(exceptionAdapter.hasException()) {
        return EnumSimpleMiddleware.exception;
    }
    return EnumSimpleMiddleware.success;
}

function dispose(shareProxy: ShareProxy): void {
    shareProxy.deleteListenersByListenerId([]);
}

function build(
    _req: Request,
    res: Response,
    next: NextFunction,
    shareProxy: ShareProxy,
    exceptionAdapter: ExceptionAdapter): void 
{
    switch(getViewState(exceptionAdapter)) {
        case EnumSimpleMiddleware.exception:
            res.status(504).json(exceptionAdapter.getKey());
            dispose(shareProxy);
            break;
        case EnumSimpleMiddleware.success: 
            res.locals.test = "hello test";
            next();
            dispose(shareProxy);;
            break;   
    }
}

function simpleMiddleware(req: Request, res: Response, next: NextFunction): void {
    const shareProxy = new ShareProxy();
    build(req, res, next, shareProxy, new ExceptionAdapter(null));
}

export default simpleMiddleware;

