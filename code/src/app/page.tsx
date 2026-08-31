const features = [
  {
    icon: "🛡️",
    title: "Real-Time Anomaly Detection",
    description:
      "Automatically scans the blockchain for any suspicious activity or anomaly.",
  },
  {
    icon: "🚀",
    title: "Self-Destruct Mechanism",
    description:
      'If an anomaly is detected, the contract automatically "cashes out" and self-destructs to protect your funds.',
  },
  {
    icon: "💧",
    title: "Instant Liquidity Conversion",
    description:
      "Automatically converts your assets into a safer and more stable form when a threat is detected.",
  },
  {
    icon: "🔐",
    title: "Fund Recovery",
    description:
      "Your protected funds can be returned to the wallet owner through the SaveMe protection mechanism.",
  },
];

export default function Home() {
  return (
    <main className="home">

      {/* HERO SECTION */}
      <section className="hero">

        <div className="hero-content">
          <h1>
            Save your funds from
            <span> rug-pull</span>
          </h1>

          <p>
            The Self-Destructing Web3 Contract that automatically
            protects your funds from suspicious activity.
          </p>

          <button className="connect-btn hero-btn">
            Connect Wallet
          </button>
        </div>

        {/* Ethereum visual */}
        <div className="ethereum-visual">
          <div className="ethereum-text">
            * SELF-DESTRUCTING CONTRACTS *
          </div>

          <div className="ethereum-logo">
            ◆
          </div>
        </div>

      </section>

      {/* FEATURES */}
      <section className="features-section">

        <h2>
          How we <span>do it?</span>
        </h2>

        <div className="features-grid">

          {features.map((feature) => (
            <div className="feature-card" key={feature.title}>

              <div className="feature-icon">
                {feature.icon}
              </div>

              <div>
                <h3>{feature.title}</h3>

                <p>{feature.description}</p>
              </div>

            </div>
          ))}

        </div>

      </section>

    </main>
  );
}