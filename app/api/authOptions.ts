import { NextAuthOptions } from "next-auth";
import google from "next-auth/providers/google";
import github from "next-auth/providers/github";

const authOptions: NextAuthOptions = {
  providers: [
    google({
      clientId: process.env.GOOGLE_CLIENT_ID as string,
      clientSecret: process.env.GOOGLE_CLIENT_SECRET as string,
    }),
    github({
      clientId: process.env.GITHUB_CLIENT_ID as string,
      clientSecret: process.env.GITHUB_CLIENT_SECRET as string,
    }),
  ],
};

export default authOptions;
