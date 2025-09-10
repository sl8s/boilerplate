import * as express from 'express';

declare global {
    namespace Express {
        interface Request {s
            user: any;
        }
    }
}