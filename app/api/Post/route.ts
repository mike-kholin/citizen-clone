import prisma from "@/prisma/db";
import { NextRequest, NextResponse } from "next/server";

export async function GET(request: NextRequest) {
  const response = await prisma.post.findMany();
  return NextResponse.json(response, { status: 200 });
}
