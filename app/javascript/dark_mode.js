document.addEventListener("DOMContentLoaded", () => {
  console.log("🌙 Dark mode script loaded");

  const toggleButton = document.getElementById("darkModeToggle");
  const body = document.getElementById("app-body");

  if (!toggleButton || !body) {
    console.warn("Dark mode toggle elements not found");
    return;
  }

  // Load saved theme
  const savedTheme = localStorage.getItem("theme");

  if (savedTheme === "dark") {
    body.classList.add("dark");
    toggleButton.textContent = "🌞";
  } else {
    toggleButton.textContent = "🌙";
  }

  // Toggle theme on click
  toggleButton.addEventListener("click", () => {
    body.classList.toggle("dark");
    const isDark = body.classList.contains("dark");
    toggleButton.textContent = isDark ? "🌞" : "🌙";
    localStorage.setItem("theme", isDark ? "dark" : "light");
  });
});
