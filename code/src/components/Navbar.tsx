import Link from "next/link";

export default function Navbar() {
  return (
    <nav className="navbar">
      <Link href="/" className="logo">
        LedgerX
      </Link>

      <div className="nav-links">
        <Link href="/transfer">Send</Link>
        <Link href="/transactions">Transactions</Link>
        <Link href="/tokens">Tokens</Link>
        <Link href="/create">Create</Link>
        <Link href="/graph">Chart</Link>
      </div>

      <button className="connect-btn">
        Connect Wallet
      </button>
    </nav>
  );
}