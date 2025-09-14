import express, { Request, Response } from "express";
import { debugPrintMethod, ShareProxy } from "smvp_typescript";
import DefaultPostgreSQLService from "../services/postgre_sql_service/default_postgre_sql_service";

const router = express.Router();

function dispose(shareProxy: ShareProxy): void {
    shareProxy.deleteListenersByListenerId([]);
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
    res.status(200).json({
        "timestamp" : new Date().toLocaleString(),
        "services" : [ 
            { 
                "name" : "default_postgre_sql_service",
                "is_alive" : true
            }
        ]
    });
    dispose(shareProxy);
}

function a0QQReadyRouterQQIsDBDead(_req: Request, res: Response, shareProxy: ShareProxy) {
    debugPrintMethod("a0QQReadyRouterQQIsDBDead");
    res.status(200).json({
        "timestamp" : new Date().toLocaleString(),
        "services" : [ 
            { 
                "name" : "default_postgre_sql_service",
                "is_alive" : false
            }
        ]
    });
    dispose(shareProxy);
}

router.get("/ready", readyRouter);

export default router;