import { Client } from "pg";
import dotenv from "dotenv";
import BasePostgreSQLService from "./base_postgre_sql_service";

// dotenv.config({ path: "../.env" });

class DefaultPostgreSQLService extends BasePostgreSQLService {
    public static readonly instance = new DefaultPostgreSQLService();
    private client: Client | null;

    private constructor() {
        super();
        this.client = null;
    }

    public override getClient(): Client {
        if(this.client != null) {
            return this.client;
        }
        this.client = new Client({
            host: process.env.DB_DEPENDENCY_NAME,
            user: process.env.POSTGRES_USER,
            password: process.env.POSTGRES_PASSWORD,
            database: process.env.POSTGRES_DB,
            port: parseInt(process.env.POSTGRES_PORT ?? "0")
        });
        this.client.connect();
        return this.client;
    }
}

export default DefaultPostgreSQLService;