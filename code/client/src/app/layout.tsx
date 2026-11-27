import '@rainbow-me/rainbowkit/styles.css';
import '../styles/globals.css';
import { Providers } from './providers';
import Navbar from '../components/Navbar';

export const metadata = {
  title: 'LedgerX',
  description: 'Save your funds from rug-pulls',
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en">
      <head>
        <link href="/favicon.ico" rel="icon" />
      </head>
      <body suppressHydrationWarning>
        <Providers>
          <Navbar />
          {children}
        </Providers>
      </body>
    </html>
  );
}
