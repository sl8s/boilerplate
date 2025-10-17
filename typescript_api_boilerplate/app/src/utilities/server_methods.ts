import { Server } from "http";
import { debugPrint } from "smvp_typescript";
import DefaultPostgreSQLService from "../services/postgre_sql_service/default_postgre_sql_service";

export async function launch(port: number): Promise<void> {
  await DefaultPostgreSQLService.instance.connect();
  debugPrint("Server running on: " + port);
}

export function shutdown(server: Server, signal: string): void {
    debugPrint("Received " + signal + " shutting down...");
    server.close(async () => {
      await DefaultPostgreSQLService.instance.disconnect();
      process.exit(0);
    });
    setTimeout(() => {
      debugPrint("Force exit");
      process.exit(1);
    }, 10000).unref();
}