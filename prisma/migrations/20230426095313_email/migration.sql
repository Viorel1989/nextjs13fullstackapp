/*
  Warnings:

  - You are about to drop the column `dueDate` on the `Task` table. All the data in the column will be lost.
  - The `status` column on the `Task` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - A unique constraint covering the columns `[email]` on the table `User` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `description` to the `Task` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "TASK_STATUS" AS ENUM ('NOT_STARTED', 'STARTED', 'COMPLETED');

-- AlterTable
ALTER TABLE "Task" DROP COLUMN "dueDate",
ADD COLUMN     "description" TEXT NOT NULL,
ADD COLUMN     "due" TIMESTAMP(3),
DROP COLUMN "status",
ADD COLUMN     "status" "TASK_STATUS" NOT NULL DEFAULT 'NOT_STARTED';

-- AlterTable
ALTER TABLE "User" ALTER COLUMN "firstName" DROP NOT NULL,
ALTER COLUMN "lastName" DROP NOT NULL;

-- DropEnum
DROP TYPE "Task_STATUS";

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");
