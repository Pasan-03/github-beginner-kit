// Sample application logic for Git & GitHub Practice
document.addEventListener("DOMContentLoaded", () => {
  const btn = document.getElementById("action-btn");
  const status = document.getElementById("dev-status");

  btn.addEventListener("click", () => {
    status.textContent = "Awesome! JavaScript is working properly. You are ready to git commit!";
    status.style.color = "#58a6ff";
    btn.textContent = "Checked & Verified! ✅";
  });
});
// Demo test line for revert demonstration
