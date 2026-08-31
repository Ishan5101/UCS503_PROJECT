import type { Metadata } from "next";
import "./globals.css";
import Navbar from "@/src/components/Navbar"

export const metadata: Metadata = {
  title: "SaveMe Protocol",
  description: "Protect your funds from rug-pulls",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body>
        <Navbar />
        {children}
      </body>
    </html>
  );
}