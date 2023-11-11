import { sqliteTable, text, integer, uniqueIndex } from 'drizzle-orm/sqlite-core';
 
export const users = sqliteTable('users', {
    id: integer('id').primaryKey(),
    username: text('username'),
  }
)

export const categories = sqliteTable('categories', {
    id: integer('id').primaryKey(),
    name: text('name'),
  }
)

export const items = sqliteTable('items', {
    id: integer('id').primaryKey(),
    name: text('name'),
    userId: integer('user_id').references(() => users.id),
    categoryId: integer('category_id').references(() => categories.id),
})

export const images = sqliteTable('images', {
    id: integer('id').primaryKey(),
    name: text('name'),
    link: text('link'),
    itemId: integer('item_id').references(() => items.id),
  }
)