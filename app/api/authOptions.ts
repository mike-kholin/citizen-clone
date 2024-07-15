import { NextAuthOptions } from "next-auth";
import google from "next-auth/providers/google";

const authOptions: NextAuthOptions = {
  providers: [
    google({
      clientId: process.env.GOOGLE_CLIENT_ID as string,
      clientSecret: process.env.GOOGLE_CLIENT_SECRET as string,
    }),
  ],
};

export default authOptions;
