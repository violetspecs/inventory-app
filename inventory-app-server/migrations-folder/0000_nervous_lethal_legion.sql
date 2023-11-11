CREATE TABLE `categories` (
	`id` integer PRIMARY KEY NOT NULL,
	`name` text
);

CREATE TABLE `images` (
	`id` integer PRIMARY KEY NOT NULL,
	`name` text,
	`link` text,
	`item_id` integer,
	FOREIGN KEY (`item_id`) REFERENCES `items`(`id`) ON UPDATE no action ON DELETE no action
);

CREATE TABLE `items` (
	`id` integer PRIMARY KEY NOT NULL,
	`name` text,
	`user_id` integer,
	`category_id` integer,
	FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON UPDATE no action ON DELETE no action,
	FOREIGN KEY (`category_id`) REFERENCES `categories`(`id`) ON UPDATE no action ON DELETE no action
);

CREATE TABLE `users` (
	`id` integer PRIMARY KEY NOT NULL,
	`username` text
);
