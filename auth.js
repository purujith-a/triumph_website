document.getElementById("signup-form")?.addEventListener("submit", function(event) {
    event.preventDefault();
    
    // Get user input
    const email = document.getElementById("signup-email").value;
    const password = document.getElementById("signup-password").value;

    // Save credentials in localStorage
    localStorage.setItem("userEmail", email);
    localStorage.setItem("userPassword", password);

    alert("Signup successful! You can now log in.");
    window.location.href = "login.html"; // Redirect to login page
});

document.getElementById("login-form")?.addEventListener("submit", function(event) {
    event.preventDefault();
    
    // Get input from user
    const email = document.getElementById("login-email").value;
    const password = document.getElementById("login-password").value;

    // Retrieve stored credentials
    const storedEmail = localStorage.getItem("userEmail");
    const storedPassword = localStorage.getItem("userPassword");

    // Validate credentials
    if (email === storedEmail && password === storedPassword) {
        alert("Login successful!");
        window.location.href = "index.html"; // Redirect to homepage
    } else {
        alert("Invalid credentials. Please try again.");
    }
});