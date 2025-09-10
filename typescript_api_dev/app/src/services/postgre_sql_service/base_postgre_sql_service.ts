import { Client } from "pg";

abstract class BasePostgreSQLService {
    protected constructor() {
    }

    public abstract getClient(): Client;
}

export default BasePostgreSQLService;