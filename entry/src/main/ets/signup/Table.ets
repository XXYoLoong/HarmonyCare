// Table.ts
import { Account } from './Account';

// 添加泛型约束，确保 T 类型具有 id 属性
interface GeneratedTypeLiteralInterface_1 {
  id: number;
}

export class Table<T extends GeneratedTypeLiteralInterface_1> {
  data: T[] = [];

  select(id: number): T | undefined {
    return this.data.find(item => item.id === id);
  }

  insert(item: T): boolean {
    if (this.data.some(existingItem => existingItem.id === item.id)) {
      console.warn(`Item with id ${item.id} already exists.`);
      return false;
    }
    this.data.push(item);
    return true;
  }

  update(item: T): boolean {
    const index = this.data.findIndex(existingItem => existingItem.id === item.id);
    if (index !== -1) {
      this.data[index] = item;
      return true;
    }
    console.warn(`Item with id ${item.id} not found for update.`);
    return false;
  }

  delete(id: number): boolean {
    const index = this.data.findIndex(existingItem => existingItem.id === id);
    if (index !== -1) {
      this.data.splice(index, 1);
      return true;
    }
    console.warn(`Item with id ${id} not found for deletion.`);
    return false;
  }
}
