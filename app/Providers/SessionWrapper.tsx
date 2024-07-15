import { SessionProvider } from "next-auth/react";
import React, { PropsWithChildren } from "react";

interface props {
  children: React.ReactNode;
}

const SessionWrapper = ({ children }: props) => {
  return <SessionProvider>{children}</SessionProvider>;
};

export default SessionWrapper;
