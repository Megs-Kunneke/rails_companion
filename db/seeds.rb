level1 = Level.create!(
  title: "Level 1: Foundations",
  description: "Core setup and foundational Rails concepts.",
  position: 1
)

level1.pages.create!(
  title: "Rails Folder Structure",
  position: 1,
  content: <<~TEXT
    When you create a Rails app, you get a full folder structure:

    - `app/` – where most of your code lives (models, controllers, views)
    - `config/` – settings and routing
    - `db/` – migrations and your SQLite or PostgreSQL files
    - `public/` – static files (like 404 pages)
    - `test/` or `spec/` – your tests (if using Minitest or RSpec)

    Understanding this layout helps you know where to place new code as you build.
  TEXT
)
