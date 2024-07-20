-- CreateTable
CREATE TABLE "Author" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "handel" TEXT NOT NULL,
    "category" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "Post" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "writtenBy" TEXT NOT NULL,
    "dateTime" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "authorID" INTEGER NOT NULL,
    CONSTRAINT "Post_authorID_fkey" FOREIGN KEY ("authorID") REFERENCES "Author" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Tags" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "Region" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "_PostToTags" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,
    CONSTRAINT "_PostToTags_A_fkey" FOREIGN KEY ("A") REFERENCES "Post" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "_PostToTags_B_fkey" FOREIGN KEY ("B") REFERENCES "Tags" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "_PostToRegion" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,
    CONSTRAINT "_PostToRegion_A_fkey" FOREIGN KEY ("A") REFERENCES "Post" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "_PostToRegion_B_fkey" FOREIGN KEY ("B") REFERENCES "Region" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "Post_authorID_key" ON "Post"("authorID");

-- CreateIndex
CREATE UNIQUE INDEX "_PostToTags_AB_unique" ON "_PostToTags"("A", "B");

-- CreateIndex
CREATE INDEX "_PostToTags_B_index" ON "_PostToTags"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_PostToRegion_AB_unique" ON "_PostToRegion"("A", "B");

-- CreateIndex
CREATE INDEX "_PostToRegion_B_index" ON "_PostToRegion"("B");
