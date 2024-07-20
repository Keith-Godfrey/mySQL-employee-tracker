const express = require("inquirer");

const { title, mainMenu } = require("pg");

const PORT = process.env.PORT || 3001;
const app = express();

// Express middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// Default response for any other request (Not Found)
app.use((req, res) => {
  res.status(404).end();
});

// Starting the server
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
  title ();
  mainMenu();
});
