import express, { Request, Response } from "express";
import EnumHomeRouter from "./enum_home_router";
import { ExceptionAdapter, ShareProxy } from "smvp_typescript";

// Final variables
const router = express.Router();
const shareProxy = new ShareProxy();

// Not final variables
let request: Request | null;
let response: Response | null;
let exceptionAdapter = new ExceptionAdapter(null);

function getViewState(): EnumHomeRouter {
    if(exceptionAdapter.hasException()) {
        return EnumHomeRouter.exception;
    }
    return EnumHomeRouter.success;
}

function dispose(): void {
    shareProxy.deleteListenersByListenerId([]);
    request = null;
    response = null;
}

function build(): void {
    switch(getViewState()) {
        case EnumHomeRouter.exception:
            response?.status(504).json(exceptionAdapter.getKey());
            dispose();
            break;
        case EnumHomeRouter.success: 
            response?.status(200).json({
                timestamp : new Date().toLocaleString(),
                message : "v0.0.1"
            });
            dispose();
            break;   
    }
}

router.get("/", (req: Request, res: Response) => {
    request = req;
    response = res;
    build();
});

export default router;

