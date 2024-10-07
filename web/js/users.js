document.addEventListener('DOMContentLoaded', function () {
  const usersGrid = document.getElementById('usersGrid');

  if (usersGrid) {
    fetch('/reports/users.json') // Fetch the users data from the JSON file
      .then(response => response.json())
      .then(data => {
        displayUsers(usersGrid, data); // Call the display function with the users data
      })
      .catch(error => {
        console.error('Error fetching users:', error);
      });
  }
});

// Function to create user cards and add them to the DOM
function displayUsers(container, users) {
  const defaultImage = 'https://img.a.transfermarkt.technology/portrait/big/177907-1663841733.jpg?lm=1';

  users.forEach(user => {
    const userCard = document.createElement('div');
    userCard.className = 'user-card';

    const userAvatar = document.createElement('img');
    userAvatar.className = 'user-card__avatar';

    // Set the avatar image, or use the default image if avatar is missing or empty
    userAvatar.src = user.avatar ? user.avatar : defaultImage;
    userAvatar.alt = `${user.first_name} ${user.last_name}`;

    // Handle error if avatar URL fails to load, fallback to default image
    userAvatar.onerror = function() {
      this.src = defaultImage;
    };

    const userName = document.createElement('h3');
    userName.className = 'user-card__name';
    userName.textContent = `${user.first_name} ${user.last_name}`;

    const userEmail = document.createElement('p');
    userEmail.className = 'user-card__email';
    userEmail.textContent = `Email: ${user.email}`;

    userCard.appendChild(userAvatar);
    userCard.appendChild(userName);
    userCard.appendChild(userEmail);
    container.appendChild(userCard);
  });
}
