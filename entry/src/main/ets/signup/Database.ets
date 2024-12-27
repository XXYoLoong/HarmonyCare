import { Table } from './Table';
import { Account } from './Account';

export class Database {
  tables: Map<string, Table<Account>> = new Map(); // 指定类型参数为 Account

  constructor() {
    this.tables.set("Account", new Table<Account>()); // 使用 Table<Account> 实例化
  }
}

export let db = new Database();