import express, { Request, Response } from "express";
import { debugPrintMethod, ExceptionAdapter, ShareProxy } from "smvp_typescript";
import EnumReadyRouter from "./enum_ready_router";
import DefaultPostgreSQLService from "../../services/postgre_sql_service/default_postgre_sql_service";

const router = express.Router();

function getViewState(): EnumReadyRouter {
    return EnumReadyRouter.success;
}

function dispose(shareProxy: ShareProxy): void {
    shareProxy.deleteListenersByListenerId([]);
}

function build(
    _req: Request,
    res: Response,
    shareProxy: ShareProxy,
    isAlive: boolean): void 
{
    switch(getViewState()) {
        case EnumReadyRouter.success: 
            res.status(200).json({
                "timestamp" : new Date().toLocaleString(),
                "services" : [ 
                    { 
                        "name" : "default_postgre_sql_service",
                        "is_alive" : isAlive
                    }
                ]
            });
            dispose(shareProxy);
            break;   
    }
}

async function readyRouter(req: Request, res: Response): Promise<void> {
    const shareProxy = new ShareProxy();
    const defaultPostgreSQLService = DefaultPostgreSQLService.instance;
    const resultIsDBAlive = await defaultPostgreSQLService.isDBAlive();
    const isDBDead = resultIsDBAlive.exceptionAdapter.hasException();
    if(isDBDead) {
        a0QQReadyRouterQQIsDBDead(req, res, shareProxy);
        return;
    }
    build(req, res, shareProxy, true);
}

function a0QQReadyRouterQQIsDBDead(req: Request, res: Response, shareProxy: ShareProxy) {
    debugPrintMethod("a0QQReadyRouterQQIsDBDead");
    build(req, res, shareProxy, false);
}

router.get("/ready", readyRouter);

export default router;