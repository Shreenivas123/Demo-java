<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shreeni — DevOps & Cloud Engineer</title>

<link href="https://fonts.googleapis.com/css2?family=DM+Serif+Display:ital@0;1&family=Space+Mono:wght@400;700&family=Outfit:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>
    :root {
        --ink: #0a0a0f;
        --cream: #f4f1eb;
        --accent: #e85d26;
        --accent-glow: rgba(232, 93, 38, 0.35);
        --teal: #2dd4a8;
        --teal-dim: rgba(45, 212, 168, 0.12);
        --slate: #64748b;
        --card-bg: rgba(255, 255, 255, 0.04);
        --border: rgba(255, 255, 255, 0.07);
    }

    * { margin: 0; padding: 0; box-sizing: border-box; }

    html { scroll-behavior: smooth; }

    body {
        font-family: 'Outfit', sans-serif;
        background: var(--ink);
        color: var(--cream);
        overflow-x: hidden;
        -webkit-font-smoothing: antialiased;
    }

    /* ─── GRAIN OVERLAY ─── */
    body::after {
        content: "";
        position: fixed;
        inset: 0;
        z-index: 9999;
        pointer-events: none;
        opacity: 0.03;
        background-image: url("data:image/svg+xml,%3Csvg viewBox='0 0 256 256' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='noise'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='4' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23noise)'/%3E%3C/svg%3E");
        background-size: 150px;
    }

    /* ─── AMBIENT GLOW ─── */
    .ambient {
        position: fixed;
        width: 600px;
        height: 600px;
        border-radius: 50%;
        filter: blur(120px);
        opacity: 0.12;
        pointer-events: none;
        z-index: 0;
    }
    .ambient--orange { background: var(--accent); top: -200px; right: -100px; }
    .ambient--teal   { background: var(--teal); bottom: -250px; left: -150px; }

    /* ─── NAV ─── */
    nav {
        position: fixed; top: 0; left: 0; right: 0;
        z-index: 100;
        display: flex; justify-content: space-between; align-items: center;
        padding: 22px 48px;
        backdrop-filter: blur(16px);
        background: rgba(10,10,15,0.7);
        border-bottom: 1px solid var(--border);
    }
    .logo {
        font-family: 'DM Serif Display', serif;
        font-size: 1.55rem;
        letter-spacing: -0.5px;
    }
    .logo span { color: var(--accent); }
    .nav-links { display: flex; gap: 32px; align-items: center; }
    .nav-links a {
        font-family: 'Space Mono', monospace;
        font-size: 0.75rem;
        text-transform: uppercase;
        letter-spacing: 2px;
        color: var(--slate);
        text-decoration: none;
        transition: color 0.3s;
    }
    .nav-links a:hover { color: var(--cream); }

    /* ─── HERO ─── */
    .hero {
        min-height: 100vh;
        display: flex;
        flex-direction: column;
        justify-content: center;
        padding: 140px 48px 80px;
        position: relative;
        z-index: 1;
    }
    .hero-tag {
        font-family: 'Space Mono', monospace;
        font-size: 0.8rem;
        text-transform: uppercase;
        letter-spacing: 4px;
        color: var(--teal);
        margin-bottom: 24px;
        display: flex; align-items: center; gap: 12px;
        animation: fadeSlideUp 1s ease 0.2s both;
    }
    .hero-tag::before {
        content: "";
        width: 40px; height: 1px;
        background: var(--teal);
    }
    .hero h1 {
        font-family: 'DM Serif Display', serif;
        font-size: clamp(3rem, 8vw, 6.5rem);
        line-height: 1.05;
        letter-spacing: -2px;
        max-width: 900px;
        animation: fadeSlideUp 1s ease 0.4s both;
    }
    .hero h1 em {
        font-style: italic;
        color: var(--accent);
        position: relative;
    }
    .hero h1 em::after {
        content: "";
        position: absolute;
        bottom: 4px; left: 0; right: 0;
        height: 3px;
        background: var(--accent);
        opacity: 0.4;
        border-radius: 2px;
    }
    .hero-sub {
        margin-top: 32px;
        font-size: 1.15rem;
        color: var(--slate);
        max-width: 560px;
        line-height: 1.75;
        font-weight: 300;
        animation: fadeSlideUp 1s ease 0.6s both;
    }
    .hero-actions {
        margin-top: 48px;
        display: flex; gap: 16px; flex-wrap: wrap;
        animation: fadeSlideUp 1s ease 0.8s both;
    }
    .btn {
        display: inline-flex; align-items: center; gap: 10px;
        padding: 14px 32px;
        border-radius: 50px;
        font-family: 'Space Mono', monospace;
        font-size: 0.8rem;
        text-transform: uppercase;
        letter-spacing: 1.5px;
        text-decoration: none;
        transition: all 0.35s ease;
        border: 1px solid var(--border);
        cursor: pointer;
    }
    .btn--primary {
        background: var(--accent);
        color: #fff;
        border-color: var(--accent);
        box-shadow: 0 4px 24px var(--accent-glow);
    }
    .btn--primary:hover {
        transform: translateY(-3px);
        box-shadow: 0 8px 40px var(--accent-glow);
    }
    .btn--ghost {
        background: transparent;
        color: var(--cream);
    }
    .btn--ghost:hover {
        background: rgba(255,255,255,0.06);
        transform: translateY(-2px);
    }
    .btn svg { width: 16px; height: 16px; fill: currentColor; }

    /* ─── MARQUEE STRIP ─── */
    .marquee-wrap {
        overflow: hidden;
        border-top: 1px solid var(--border);
        border-bottom: 1px solid var(--border);
        padding: 18px 0;
        position: relative;
        z-index: 1;
    }
    .marquee-track {
        display: flex;
        gap: 60px;
        animation: scroll 30s linear infinite;
        width: max-content;
    }
    .marquee-track span {
        font-family: 'Space Mono', monospace;
        font-size: 0.7rem;
        text-transform: uppercase;
        letter-spacing: 3px;
        color: var(--slate);
        white-space: nowrap;
        opacity: 0.6;
    }
    .marquee-track span::before {
        content: "◆";
        margin-right: 12px;
        color: var(--accent);
        opacity: 0.5;
    }

    @keyframes scroll {
        to { transform: translateX(-50%); }
    }

    /* ─── SECTIONS ─── */
    section {
        position: relative;
        z-index: 1;
        padding: 100px 48px;
    }
    .section-label {
        font-family: 'Space Mono', monospace;
        font-size: 0.7rem;
        text-transform: uppercase;
        letter-spacing: 5px;
        color: var(--accent);
        margin-bottom: 16px;
    }
    .section-title {
        font-family: 'DM Serif Display', serif;
        font-size: clamp(2rem, 4vw, 3.2rem);
        letter-spacing: -1px;
        margin-bottom: 48px;
    }

    /* ─── PROJECT CARD ─── */
    .project-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
        gap: 24px;
        max-width: 1100px;
    }
    .project-card {
        background: var(--card-bg);
        border: 1px solid var(--border);
        border-radius: 20px;
        padding: 36px;
        transition: all 0.4s ease;
        position: relative;
        overflow: hidden;
    }
    .project-card::before {
        content: "";
        position: absolute;
        top: 0; left: 0;
        width: 100%; height: 3px;
        background: linear-gradient(90deg, var(--accent), var(--teal));
        opacity: 0;
        transition: opacity 0.4s;
    }
    .project-card:hover::before { opacity: 1; }
    .project-card:hover {
        border-color: rgba(255,255,255,0.14);
        transform: translateY(-6px);
        box-shadow: 0 20px 60px rgba(0,0,0,0.4);
    }
    .project-card h3 {
        font-family: 'DM Serif Display', serif;
        font-size: 1.4rem;
        margin-bottom: 12px;
    }
    .project-card p {
        color: var(--slate);
        line-height: 1.7;
        font-size: 0.95rem;
        font-weight: 300;
    }
    .tech-tags {
        margin-top: 20px;
        display: flex; flex-wrap: wrap; gap: 8px;
    }
    .tech-tags span {
        font-family: 'Space Mono', monospace;
        font-size: 0.65rem;
        text-transform: uppercase;
        letter-spacing: 1px;
        padding: 5px 12px;
        border-radius: 20px;
        background: var(--teal-dim);
        color: var(--teal);
        border: 1px solid rgba(45, 212, 168, 0.15);
    }

    /* ─── SKILLS GRID ─── */
    .skills-grid {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(160px, 1fr));
        gap: 14px;
        max-width: 900px;
    }
    .skill-pill {
        padding: 16px 20px;
        border-radius: 14px;
        border: 1px solid var(--border);
        background: var(--card-bg);
        font-family: 'Space Mono', monospace;
        font-size: 0.78rem;
        letter-spacing: 0.5px;
        text-align: center;
        transition: all 0.3s;
    }
    .skill-pill:hover {
        border-color: var(--accent);
        background: rgba(232,93,38,0.06);
        transform: scale(1.04);
    }

    /* ─── CONNECT / FOOTER ─── */
    .connect {
        max-width: 700px;
    }
    .connect-links {
        display: flex; flex-wrap: wrap; gap: 16px;
        margin-top: 36px;
    }
    .connect-link {
        display: inline-flex; align-items: center; gap: 12px;
        padding: 16px 28px;
        border-radius: 14px;
        border: 1px solid var(--border);
        background: var(--card-bg);
        text-decoration: none;
        color: var(--cream);
        font-size: 0.95rem;
        font-weight: 500;
        transition: all 0.35s;
    }
    .connect-link:hover {
        border-color: var(--accent);
        transform: translateY(-3px);
        box-shadow: 0 10px 30px rgba(0,0,0,0.3);
    }
    .connect-link svg {
        width: 20px; height: 20px;
        fill: var(--teal);
        flex-shrink: 0;
    }

    footer {
        position: relative;
        z-index: 1;
        text-align: center;
        padding: 40px 48px;
        border-top: 1px solid var(--border);
        font-family: 'Space Mono', monospace;
        font-size: 0.7rem;
        color: var(--slate);
        letter-spacing: 2px;
        text-transform: uppercase;
    }

    /* ─── ANIMATIONS ─── */
    @keyframes fadeSlideUp {
        from { opacity: 0; transform: translateY(32px); }
        to   { opacity: 1; transform: translateY(0); }
    }

    .reveal {
        opacity: 0;
        transform: translateY(40px);
        transition: opacity 0.8s ease, transform 0.8s ease;
    }
    .reveal.visible {
        opacity: 1;
        transform: translateY(0);
    }

    /* ─── RESPONSIVE ─── */
    @media (max-width: 768px) {
        nav { padding: 16px 24px; }
        .nav-links { gap: 18px; }
        .nav-links a { font-size: 0.65rem; letter-spacing: 1.2px; }
        .hero, section { padding-left: 24px; padding-right: 24px; }
        .hero { padding-top: 120px; }
        .project-grid { grid-template-columns: 1fr; }
        .skills-grid { grid-template-columns: repeat(2, 1fr); }
        .connect-links { flex-direction: column; }
    }
</style>
</head>

<body>

<div class="ambient ambient--orange"></div>
<div class="ambient ambient--teal"></div>

<!-- NAV -->
<nav>
    <div class="logo">S<span>.</span></div>
    <div class="nav-links">
        <a href="#projects">Work</a>
        <a href="#skills">Skills</a>
        <a href="#connect">Connect</a>
        <a href="hello">API Demo</a>
    </div>
</nav>

<!-- HERO -->
<div class="hero">
    <div class="hero-tag">DevOps &amp; Cloud Engineer</div>
    <h1>Building <em>Pipelines</em><br>That Ship Fearlessly</h1>
    <p class="hero-sub">
        I craft CI/CD infrastructure, automate cloud workflows, and bridge
        the gap between development velocity and operational resilience.
    </p>
    <div class="hero-actions">
        <a class="btn btn--primary" href="https://github.com/Shreenivas123" target="_blank">
            <svg viewBox="0 0 24 24"><path d="M12 .3a12 12 0 0 0-3.8 23.38c.6.12.83-.26.83-.57v-2.23c-3.34.73-4.04-1.42-4.04-1.42-.55-1.39-1.34-1.76-1.34-1.76-1.08-.74.09-.73.09-.73 1.2.08 1.84 1.23 1.84 1.23 1.07 1.83 2.81 1.3 3.5 1 .1-.78.42-1.3.76-1.6-2.67-.3-5.47-1.33-5.47-5.93 0-1.31.47-2.38 1.24-3.22-.14-.3-.54-1.52.1-3.18 0 0 1-.32 3.3 1.23a11.5 11.5 0 0 1 6.02 0c2.28-1.55 3.29-1.23 3.29-1.23.64 1.66.24 2.88.12 3.18a4.65 4.65 0 0 1 1.23 3.22c0 4.61-2.81 5.63-5.48 5.92.42.36.81 1.1.81 2.22v3.29c0 .31.22.7.83.57A12 12 0 0 0 12 .3"/></svg>
            GitHub
        </a>
        <a class="btn btn--ghost" href="https://www.linkedin.com/in/shreenivas" target="_blank">
            <svg viewBox="0 0 24 24"><path d="M20.45 20.45h-3.56v-5.57c0-1.33-.02-3.04-1.85-3.04-1.85 0-2.14 1.45-2.14 2.94v5.67H9.34V9h3.41v1.56h.05c.48-.9 1.64-1.85 3.37-1.85 3.6 0 4.27 2.37 4.27 5.46v6.28zM5.34 7.43a2.06 2.06 0 1 1 0-4.13 2.06 2.06 0 0 1 0 4.13zM7.12 20.45H3.56V9h3.56v11.45zM22.22 0H1.77A1.75 1.75 0 0 0 0 1.73v20.54A1.75 1.75 0 0 0 1.77 24h20.45A1.75 1.75 0 0 0 24 22.27V1.73A1.75 1.75 0 0 0 22.22 0z"/></svg>
            LinkedIn
        </a>
    </div>
</div>

<!-- MARQUEE -->
<div class="marquee-wrap">
    <div class="marquee-track">
        <span>Jenkins</span><span>AWS</span><span>Azure DevOps</span><span>Terraform</span>
        <span>Docker</span><span>Kubernetes</span><span>Rundeck</span><span>SonarQube</span>
        <span>CloudFormation</span><span>GitHub Actions</span><span>Python</span><span>Bash</span>
        <span>Jenkins</span><span>AWS</span><span>Azure DevOps</span><span>Terraform</span>
        <span>Docker</span><span>Kubernetes</span><span>Rundeck</span><span>SonarQube</span>
        <span>CloudFormation</span><span>GitHub Actions</span><span>Python</span><span>Bash</span>
    </div>
</div>

<!-- PROJECTS -->
<section id="projects">
    <div class="section-label reveal">Selected Work</div>
    <h2 class="section-title reveal">Projects &amp; Pipelines</h2>
    <div class="project-grid">
        <div class="project-card reveal">
            <h3>Jenkins CI/CD → Tomcat</h3>
            <p>End-to-end pipeline: Git clone, Maven build, and automated WAR deployment to Apache Tomcat 11 with webhook triggers and email notifications.</p>
            <div class="tech-tags">
                <span>Jenkins</span><span>Maven</span><span>Tomcat 11</span><span>Webhooks</span>
            </div>
        </div>
        <div class="project-card reveal">
            <h3>Flyway DB Migrations</h3>
            <p>Multi-environment Azure DevOps pipelines with approval gates, drift detection, schema validation, and lookup data deployment for CorroHealth.</p>
            <div class="tech-tags">
                <span>Azure DevOps</span><span>Flyway</span><span>PowerShell</span><span>YAML</span>
            </div>
        </div>
        <div class="project-card reveal">
            <h3>Blue/Green ALB Monitor</h3>
            <p>Rundeck-driven Bash automation to check ALB traffic weight distribution across blue/green deployments with AWS SES email alerting.</p>
            <div class="tech-tags">
                <span>AWS ALB</span><span>Rundeck</span><span>Bash</span><span>SES</span>
            </div>
        </div>
        <div class="project-card reveal">
            <h3>SonarQube + GitHub Actions</h3>
            <p>Integrated code quality scanning into CI workflows. Diagnosed auth failures, excluded unsupported file types, and hardened the analysis pipeline.</p>
            <div class="tech-tags">
                <span>SonarQube</span><span>GitHub Actions</span><span>Maven</span>
            </div>
        </div>
        <div class="project-card reveal">
            <h3>Agentic AI Explorations</h3>
            <p>Exploring the intersection of AI agents and DevOps — LangChain context management, multi-agent architectures, and AIOps research.</p>
            <div class="tech-tags">
                <span>LangChain</span><span>Python</span><span>GenAI</span><span>AIOps</span>
            </div>
        </div>
    </div>
</section>

<!-- SKILLS -->
<section id="skills">
    <div class="section-label reveal">Toolkit</div>
    <h2 class="section-title reveal">Technologies I Work With</h2>
    <div class="skills-grid reveal">
        <div class="skill-pill">AWS</div>
        <div class="skill-pill">Jenkins</div>
        <div class="skill-pill">Azure DevOps</div>
        <div class="skill-pill">Docker</div>
        <div class="skill-pill">Kubernetes</div>
        <div class="skill-pill">Terraform</div>
        <div class="skill-pill">CloudFormation</div>
        <div class="skill-pill">GitHub Actions</div>
        <div class="skill-pill">Rundeck</div>
        <div class="skill-pill">SonarQube</div>
        <div class="skill-pill">Python</div>
        <div class="skill-pill">Bash</div>
        <div class="skill-pill">Maven</div>
        <div class="skill-pill">Flyway</div>
        <div class="skill-pill">Tomcat</div>
        <div class="skill-pill">LangChain</div>
    </div>
</section>

<!-- CONNECT -->
<section id="connect">
    <div class="section-label reveal">Get In Touch</div>
    <h2 class="section-title reveal">Let's Connect</h2>
    <p class="reveal" style="color: var(--slate); line-height: 1.8; max-width: 520px; font-weight: 300;">
        Always open to conversations about DevOps, cloud architecture, CI/CD strategy,
        or the future of agentic AI in infrastructure.
    </p>
    <div class="connect-links reveal">
        <a class="connect-link" href="https://github.com/Shreenivas123" target="_blank">
            <svg viewBox="0 0 24 24"><path d="M12 .3a12 12 0 0 0-3.8 23.38c.6.12.83-.26.83-.57v-2.23c-3.34.73-4.04-1.42-4.04-1.42-.55-1.39-1.34-1.76-1.34-1.76-1.08-.74.09-.73.09-.73 1.2.08 1.84 1.23 1.84 1.23 1.07 1.83 2.81 1.3 3.5 1 .1-.78.42-1.3.76-1.6-2.67-.3-5.47-1.33-5.47-5.93 0-1.31.47-2.38 1.24-3.22-.14-.3-.54-1.52.1-3.18 0 0 1-.32 3.3 1.23a11.5 11.5 0 0 1 6.02 0c2.28-1.55 3.29-1.23 3.29-1.23.64 1.66.24 2.88.12 3.18a4.65 4.65 0 0 1 1.23 3.22c0 4.61-2.81 5.63-5.48 5.92.42.36.81 1.1.81 2.22v3.29c0 .31.22.7.83.57A12 12 0 0 0 12 .3"/></svg>
            GitHub
        </a>
        <a class="connect-link" href="https://www.linkedin.com/in/shreenivas" target="_blank">
            <svg viewBox="0 0 24 24"><path d="M20.45 20.45h-3.56v-5.57c0-1.33-.02-3.04-1.85-3.04-1.85 0-2.14 1.45-2.14 2.94v5.67H9.34V9h3.41v1.56h.05c.48-.9 1.64-1.85 3.37-1.85 3.6 0 4.27 2.37 4.27 5.46v6.28zM5.34 7.43a2.06 2.06 0 1 1 0-4.13 2.06 2.06 0 0 1 0 4.13zM7.12 20.45H3.56V9h3.56v11.45zM22.22 0H1.77A1.75 1.75 0 0 0 0 1.73v20.54A1.75 1.75 0 0 0 1.77 24h20.45A1.75 1.75 0 0 0 24 22.27V1.73A1.75 1.75 0 0 0 22.22 0z"/></svg>
            LinkedIn
        </a>
        <a class="connect-link" href="mailto:your-email@example.com">
            <svg viewBox="0 0 24 24"><path d="M20 4H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z"/></svg>
            Email Me
        </a>
    </div>
</section>

<footer>
    &copy; 2026 Shreeni &mdash; Built with passion &amp; pipelines
</footer>

<script>
    // Intersection Observer for scroll reveals
    const observer = new IntersectionObserver((entries) => {
        entries.forEach((entry, i) => {
            if (entry.isIntersecting) {
                setTimeout(() => entry.target.classList.add('visible'), i * 80);
                observer.unobserve(entry.target);
            }
        });
    }, { threshold: 0.15 });

    document.querySelectorAll('.reveal').forEach(el => observer.observe(el));
</script>

</body>
</html>
